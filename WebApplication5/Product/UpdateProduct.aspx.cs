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
    [System.Runtime.InteropServices.Guid("3CC062B1-369B-4F87-9A96-A9EFCF630DE0")]
    public partial class UpdateProduct : System.Web.UI.Page
    {
        public string aconnection = " Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\FOnline.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlConnection con = new SqlConnection(aconnection);
            //  String mycon = "Data Source=(LocalDB\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\FOnline.mdf;Integrated Security=True";
            // String myquery = "Select * from Product where pro_id=" + Request.QueryString["Product_ID"];
            // SqlConnection con = new SqlConnection(mycon);
            //  SqlCommand cmd = new SqlCommand();
            // cmd.CommandText = myquery;
            //  cmd.Connection = con;
            //  SqlDataAdapter da = new SqlDataAdapter();
            //  da.SelectCommand = cmd;
            //   DataSet ds = new DataSet();
            // da.Fill(ds);
            // if (ds.Tables[0].Rows.Count > 0)
            //  {
            //      txtpid.Text = ds.Tables[0].Rows[0]["pro_id"].ToString();
            //   txtpname.Text = ds.Tables[0].Rows[0]["pro_name"].ToString();
            //    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["cat_name"].ToString();
            //   txtpprice.Text = ds.Tables[0].Rows[0]["pro_price"].ToString();
            //    txtpq.Text = ds.Tables[0].Rows[0]["pro_qty"].ToString();
            //}
            //  con.Close();
            txtpid.Text = "7";
            txtpname.Text = "Office Desk";
            txtpid.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            SqlConnection con1 = new SqlConnection(aconnection);
            con1.Open();
            if (con1.State == System.Data.ConnectionState.Open)
            {
                // string sql = "UPDATE Product SET pro_name='" + txtpname.Text + "',cat_name='" + DropDownList1.SelectedItem.Value.ToString() + "',pro_price='" + txtpprice.Text + "',pro_qty='" + txtpq.Text + "' WHERE pro_id = " +txtpid.Text + "";
                //  string sql = "UPDATE Product SET pro_name='" + txtpname.Text+ "', cat_name='"+DropDownList1.SelectedValue.ToString()+"',pro_price='"+txtpprice.Text+"',pro_qty='"+txtpprice.Text+"'where pro_id="+txtpid.Text.ToString()+"";
                string sql = "UPDATE Product set pro_name='" + txtpname.Text.ToString() + "',cat_name='" + DropDownList11.SelectedValue.ToString() + "',pro_price='" + txtpprice.Text.ToString() + "',pro_qty='" + txtpq.Text.ToString() +  "'  where pro_id=" + txtpid.Text.ToString() + "";
                //   txtpname.Text = "T";
                // var vproName = txtpname.Text.ToString();
                //var vcatName = DropDownList1.SelectedValue.ToString();
                //var vproPrice = txtpprice.Text.ToString();
                //var vproQuty = txtpq.Text.ToString();
                //var vproId = txtpid.Text.ToString();
                //var proname = txtpname.ToString();
                //var proid = txtpid.ToString();
                //var proqty = txtpq.ToString();
                //var proprice = txtpprice.ToString();
                //var catname = DropDownList1.SelectedValue.ToString();
                //string newQ = " UPDATE product SET    pro_name = ' "+vproName+" ', cat_name = '"+vcatName+"', pro_price = '"+vproPrice+"', pro_qty = '"+vproQuty+"' WHERE pro_id = '"+vproId+"'  ";
                // string sql = "Update Product SET pro_name='"+proname+"', cat_name='"+catname+"', pro_price='"+proprice+"', pro_qty='"+proqty+"' WHERE pro_id='"+proid+"'";
                //  SqlCommand cmd = new SqlCommand("Update Product set pro_name='" + txtpname.Text + "',Produc='" + ProductDescription.Text + "',ProductQuantity='" + ProductQuantity.Text + "', ProductPrice.Text='" + ProductPrice + "' where ProductID='" + userid + "'", conn);
                //SqlCommand cmd1 = new SqlCommand("Update Product set pro_name='" + txtpname.Text + "',cat_name='" + DropDownList1.SelectedItem.Text + "', pro_price='" + txtpprice.Text + "', pro_qty='" + txtpq.Text + "' where pro_id='" + txtpid + "'",con1);
                // SqlCommand cmd1 = new SqlCommand(sql);
                SqlCommand cmd1 = new SqlCommand(sql, con1);
                cmd1.ExecuteNonQuery();
            }
            Response.Write("Updated!");

            
           
        }

    }
}