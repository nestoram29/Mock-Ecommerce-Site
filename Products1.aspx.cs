using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTest.Models;

namespace WebsiteTest
{
    public partial class Products1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListView1.DataSource = Utility.GetProducts("GPU");
                ListView1.DataBind();
            }
        }
    }
}