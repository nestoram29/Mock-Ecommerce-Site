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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (DataRow dr in Utility.GetStates().Tables[0].Rows)
            {
                State.Items.Add(dr["Code"].ToString());
                DropDownList3.Items.Add(dr["Code"].ToString());
            }

            if(Session["User"] != null)
            {
                TextBox1.Text = ((Models.User)Session["User"]).FirstName;
                TextBox2.Text = ((Models.User)Session["User"]).LastName;
                TextBox7.Text = ((Models.User)Session["User"]).Address;
                TextBox8.Text = ((Models.User)Session["User"]).City;
                DropDownList3.Text = ((Models.User)Session["User"]).State;
                TextBox9.Text = ((Models.User)Session["User"]).Zipcode;
            }
        }

        protected void ContinueBtn_Click(object sender, EventArgs e)
        {
            PaymentInfo p = new PaymentInfo(CreditCardNumber.Text, CCType.Text, ExpDate.Text, ExpYear.Text, CVV.Text, CardName.Text, Address.Text, City.Text, State.Text, ZipCode.Text);
            Session["PaymentInfo"] = p;
            ShippingInfo s = new ShippingInfo(TextBox1.Text, TextBox2.Text, TextBox7.Text, TextBox8.Text, DropDownList3.Text, TextBox9.Text, Email.Text);
            Session["ShippingInfo"] = s;
            Response.Redirect("Review.aspx");
        }
    }
}