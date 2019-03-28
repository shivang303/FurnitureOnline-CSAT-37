using System;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication5.Category
{
    public partial class AddCategory : System.Web.UI.Page
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

            catid.Enabled = false;
            Msg.Visible = false;

            if (dbconnection.State == ConnectionState.Closed)
            dbconnection.Open();
            SqlCommand cmd4 = new SqlCommand("Select max(cat_id) from Category", dbconnection);
            SqlDataReader myrdr4 = cmd4.ExecuteReader();
            if (myrdr4.Read())
            {
                int x = myrdr4.GetInt32(0) + 1;
                catid.Text = x.ToString();
            }
            else
            {
                catid.Text = "1";
                dbconnection.Close();
                catname.Focus();
            }
        }

        protected void addcategory1_Click(object sender, EventArgs e)
        {
            if (catname.Text == "")
            {
                rcname.Visible = true;
            }
            else
            {
                SqlConnection dbconnection1 = new SqlConnection(dbstring);
                dbconnection1.Open();
                if (dbconnection1.State == System.Data.ConnectionState.Open)
                {
                    string PQuery = "insert into Category(cat_id,cat_name) values('" + catid.Text.ToString() + "','" + catname.Text.ToString() + "')";
                    SqlCommand PCommand = new SqlCommand(PQuery, dbconnection1);
                    PCommand.ExecuteNonQuery();
                }
                rcname.Visible = false;
                Msg.Visible = true;
            }
        }
    }
}
