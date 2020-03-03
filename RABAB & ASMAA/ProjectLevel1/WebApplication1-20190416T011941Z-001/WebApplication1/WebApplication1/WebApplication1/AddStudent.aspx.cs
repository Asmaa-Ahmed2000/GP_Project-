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
    public partial class insert : System.Web.UI.Page
    {
        string sqlconstring = @"Data Source = .;Integrated Security = true ; Database =system ";
    
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("listprograme", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            ddlprograme.DataSource = dt;
            ddlprograme.DataTextField = "programname";
            ddlprograme.DataValueField = "Programid";

            ddlprograme.DataBind();
        }

        protected void bt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert_student", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@programid", ddlprograme.Text);
            cmd.Parameters.AddWithValue("@level", ddllevel.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@hours", txthours.Text);
            // cmd.Parameters.AddWithValue("@Gender", male.Text);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Add success";
        }
    }
}