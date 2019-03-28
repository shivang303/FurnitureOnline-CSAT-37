using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
namespace WebApplication5.Product
{
    public partial class AddProduct : System.Web.UI.Page
    {
        public string dbstring = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\FOnline.mdf;Integrated Security = True";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection dbconnection = new SqlConnection(dbstring);
            dbconnection.Open();
            //String myquery = "Select pro_id from Product";
            //  String myquery2 = "SELECT MAX(pro_id) FROM Product";

            /* SqlCommand cmd = new SqlCommand();
             cmd.CommandText = myquery2;
             cmd.Connection = dbconnection;
             SqlDataAdapter da = new SqlDataAdapter();
             da.SelectCommand = cmd;
             DataSet ds = new DataSet();
             da.Fill(ds);
             if (ds.Tables[0].Rows.Count > 0)
             {
                 proid.Text = ds.Tables[0].Rows[0]["pro_id"].ToString();

             }*/
            //  SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = myquery2;
            //cmd.Connection = dbconnection;
            //dbconnection.Close();
            Msg.Visible = false;
            proid.Enabled = false;

            if (dbconnection.State == ConnectionState.Closed)
                dbconnection.Open();

            SqlCommand cmd4 = new SqlCommand("Select max(pro_id) from Product", dbconnection);
            SqlDataReader myrdr4 = cmd4.ExecuteReader();


            if (myrdr4.Read())
            {

                int x = myrdr4.GetInt32(0) + 1;
                proid.Text = x.ToString();

            }
            else
            {

                proid.Text = "1";
                dbconnection.Close();
                proname.Focus();


            }


        }





        protected void addcategory0_Click(object sender, EventArgs e)
        {
            SqlConnection dbconnection1 = new SqlConnection(dbstring);
            dbconnection1.Open();
            if (dbconnection1.State == System.Data.ConnectionState.Open)
            {
                string PQuery = "insert into Product(pro_id,pro_name,cat_name,pro_price,pro_qty) values('" + proid.Text.ToString() + "','" + proname.Text.ToString() + "','" + ddcat.SelectedItem.Text +
                                 "','" + proprice.Text.ToString() + "','" + proprice.Text.ToString() + "')";
                SqlCommand PCommand = new SqlCommand(PQuery, dbconnection1);
                PCommand.ExecuteNonQuery();
            }
            Msg.Visible = true;
            
       

        }
    }
}