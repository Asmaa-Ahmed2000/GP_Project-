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
    public partial class Filter : System.Web.UI.Page
    {
        string sqlconstring = @"Data Source =. ;Integrated Security = true ; Database =system ";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void bt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("filter", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@programID", txtproid.Text);
            da.SelectCommand.Parameters.AddWithValue("@level‏", txtlevel.Text);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}