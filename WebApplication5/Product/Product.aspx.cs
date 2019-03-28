using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Product
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string pid = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("UpdateProduct.aspx?Product_ID=" + pid);
        }

        protected void addcategory0_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Product/AddProduct.aspx");
        }
    }
}