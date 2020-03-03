using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Update_category : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty2";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetinfocateorybyId", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@Category_ID", Convert.ToInt32(Request.QueryString["category_ID"].ToString()));
            DataTable dt = new DataTable();
            da.Fill(dt);

            TextBox1.Text = dt.Rows[0]["@Category_Name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("updatecategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Category_Name", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@image", Label2.Text);
            cmd.Parameters.AddWithValue("@Category_ID", Convert.ToInt32(Request.QueryString["@Category_ID"].ToString()));
            int result = cmd.ExecuteNonQuery();

            Label1.Text = "Update success";
        }
    }
}