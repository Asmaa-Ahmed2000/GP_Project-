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
    public partial class Marks : System.Web.UI.Page
    {

        string sqlconstring = @"Data Source = .;Integrated Security = true ; Database =system ";
        private object txtstudnetid;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("marks_student", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("deletemark", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@courseid", txtcoursid.Text);

            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}