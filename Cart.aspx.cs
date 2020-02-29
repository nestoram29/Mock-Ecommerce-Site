using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTest.Models;
using System.Data;

namespace WebsiteTest
{
    public partial class Cart : System.Web.UI.Page
    {
        DataSet cart = new DataSet();
        double total = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    cart = Utility.GetCartItems(((Models.User)Session["User"]).Username);

                    total = 0;

                    foreach(DataTable dt in cart.Tables)
                    {
                        dt.Columns.Add("Price");
                        dt.Columns.Add("ShortDescription");
                        dt.Columns.Add("SubTotal");
                        dt.Columns.Add("ProductName");

                        foreach(DataRow dr in dt.Rows)
                        {
                            DataTable product = Utility.GetProduct(dr["ProductID"].ToString());
                            dr["Price"] = product.Rows[0]["Price"];
                            int subtotal = Convert.ToInt32(product.Rows[0]["Price"]);
                            subtotal *= (int)dt.Rows[0]["Quantity"];
                            dr["SubTotal"] = subtotal;
                            total += subtotal;
                            dr["ShortDescription"] = product.Rows[0]["ShortDescription"];
                            dr["ProductName"] = product.Rows[0]["Name"];
                        }
                    }

                    ListView1.DataSource = cart;
                    ListView1.DataBind();

                    Session["UserCart"] = cart;

                    DataSet sfl = Utility.GetSFLItems(((Models.User)Session["User"]).Username);

                    foreach (DataTable dt in sfl.Tables)
                    {
                        dt.Columns.Add("Price");
                        dt.Columns.Add("ShortDescription");
                        dt.Columns.Add("SubTotal");
                        dt.Columns.Add("ProductName");

                        foreach (DataRow dr in dt.Rows)
                        {
                            DataTable product = Utility.GetProduct(dr["ProductID"].ToString());
                            dr["Price"] = product.Rows[0]["Price"];
                            int subtotal = Convert.ToInt32(product.Rows[0]["Price"]);
                            subtotal *= (int)dt.Rows[0]["Quantity"];
                            dr["SubTotal"] = subtotal;
                            dr["ShortDescription"] = product.Rows[0]["ShortDescription"];
                            dr["ProductName"] = product.Rows[0]["Name"];
                        }
                    }

                    ListView2.DataSource = sfl;
                    ListView2.DataBind();

                }
                else if (Session["Cart"] != null)
                {
                    cart = ((Models.Cart)Session["Cart"]).getCart();

                    ListView1.DataSource = cart;
                    ListView1.DataBind();
                }
            }
        }

        protected void CheckoutBtn_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Session["Cart"] = cart;
            }
            Session["Total"] = total;
            Response.Redirect("Payment.aspx");
        }
    }
}