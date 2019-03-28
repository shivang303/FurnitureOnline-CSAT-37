using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication5.Login_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Error.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            con.Open();
            string LoginQuery = "select count(*) from FUser where user_name='"+userid.Text+"'and user_password='"+pwd.Text+"'";
            SqlCommand logincmd = new SqlCommand(LoginQuery,con);
            String output = logincmd.ExecuteScalar().ToString();
            if (output == "1")
            {
                Response.Redirect("../Home/Index.aspx");
            }
            else
            {
                Error.Visible = true;
            }

        }

     
    }
    
}