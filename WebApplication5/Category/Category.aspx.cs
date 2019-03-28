using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Category
{
    public partial class Category1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addcategory0_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCategory.aspx");
        }
    }
}