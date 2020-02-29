using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebsiteTest.Models;

namespace WebsiteTest
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string id = Request.QueryString["ID"];

                DataTable product = Utility.GetProduct(id);

                string name = product.Rows[0]["Name"].ToString();
                string desc = product.Rows[0]["Description"].ToString();
                string shortdesc = product.Rows[0]["ShortDescription"].ToString();
                string price = product.Rows[0]["Price"].ToString();
                string category = product.Rows[0]["Category"].ToString();

                ProdImg.ImageUrl = "Images/products/" + id + ".jpg";
                ProdName.Text = name;
                PriceLbl.Text = "$" + price;
                ShortDescLbl.Text = shortdesc;
                LongDescLbl.Text = desc;
                CategoryLbl.Text = category;
            }
        }

        protected void AddToCartBtn_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];

            if(Session["User"] != null)
            {
                string username = ((Models.User)Session["User"]).Username;
                Utility.AddToCart(username, id);
            }
            else
            {
                if(Session["Cart"] != null)
                {
                    ((Models.Cart)Session["Cart"]).addItem(id);
                }
                else
                {
                    Models.Cart cart = new Models.Cart();
                    Session["Cart"] = cart;
                }
            }
        }
    }
}