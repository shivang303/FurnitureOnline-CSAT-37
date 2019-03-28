using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Home
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addcategory_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Category/Addcategory.aspx");
        }

        protected void addcategory0_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Product/AddProduct.aspx");
        }
    }
}