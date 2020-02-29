using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTest.Models;

namespace WebsiteTest
{
    public partial class PurchaseConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            confirmationLbl.Text = "Your purchase was succesfull. An email want sent to you with your purchase information. Thank you for shopping with us!";

            WebMail message = new Models.WebMail();

            message.To = ((ShippingInfo)Session["ShippingInfo"]).ToString();
            message.CC = "";
            message.BCC = "";
            message.BodyIsHTML = false;
            message.From = "Webmaster@mysite.com";
            message.Subject = "Recent Purchase";
            message.Body = string.Format(@"Here is your purchase information. Your purchase total was '{0}'", Session["Total"].ToString());

            message.Send();
        }
    }
}