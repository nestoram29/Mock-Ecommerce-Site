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
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PaymentInfo p = (PaymentInfo)Session["PaymentInfo"];
            ShippingInfo s = (ShippingInfo)Session["ShippingInfo"];

            infoLbl.Text = "Your credit card of type " + p.ccType + " will be charged a total of $" + Session["Total"] + ". Please click on the confirm button below to confirm this purchase.";
        }

        protected void ConfirmBtn_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string username = ((User)Session["User"]).Username;

            Utility.MakePurchase((DataSet)Session["Cart"], date, username);

            

            Response.Redirect("PurchaseConfirmation.aspx");
        }
    }
}