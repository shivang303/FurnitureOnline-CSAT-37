using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication5.Login_1
{
    public partial class Registration : System.Web.UI.Page
    {
        public string dbstring = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\FOnline.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

            userid.Enabled = false;
            SqlConnection dbconnection = new SqlConnection(dbstring);
            dbconnection.Open();
            if (dbconnection.State == ConnectionState.Closed)
                dbconnection.Open();
            SqlCommand cmd4 = new SqlCommand("Select max(user_id) from Fuser", dbconnection);
            SqlDataReader myrdr4 = cmd4.ExecuteReader();
            if (myrdr4.Read())
            {

                int x = myrdr4.GetInt32(0) + 1;
                userid.Text = x.ToString();

            }
            else
            {

                userid.Text = "1";
                dbconnection.Close();
                uname.Focus();


            }

            uname.Text = "";
            lname.Text = "";
            fname.Text = "";
            email.Text = "";
            phone.Text = "";
            comments.Text = "";
            address.Text = "";
            postal.Text = "";
            city.Text = "";
          
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection dbconnection1 = new SqlConnection(dbstring);
            dbconnection1.Open();
            if (dbconnection1.State == System.Data.ConnectionState.Open)
            {
                string PQuery = "insert into Fuser(user_id,user_name,user_fname,user_lname,user_email,user_password,user_phone,user_address,user_postal,user_city,dob,dor,comment) values('" + userid.Text.ToString() + "','" + uname.Text.ToString() + "','" + fname.Text.ToString() + "','" + lname.Text.ToString() + "','" + email.Text.ToString() + "','" + password.Text.ToString() +"','" + phone.Text.ToString() + "','" + address.Text.ToString() + "','" + postal.Text.ToString() + "','" + city.Text.ToString() + "','" + dob.Value.ToString() + "','" + DateTime.Now + "','" + comments.Text.ToString() + "')";
                SqlCommand PCommand = new SqlCommand(PQuery, dbconnection1);
                PCommand.ExecuteNonQuery();
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You have been Registered!');</script>");
        }
    }
}