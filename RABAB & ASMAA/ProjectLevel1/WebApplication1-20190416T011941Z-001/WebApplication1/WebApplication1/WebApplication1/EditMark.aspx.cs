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
    public partial class EditUser : System.Web.UI.Page
    {
        string sqlconstring = @"Data Source = .;Integrated Security = true ; Database =system ";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetMarksBySID", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@sid", Convert.ToInt32(Request.QueryString["MarkID"].ToString()));
       
                DataTable dt = new DataTable();
                da.Fill(dt);

                txtmarkfirst.Text = dt.Rows[0]["first"].ToString();
                txtmarksceand.Text = dt.Rows[0]["second"].ToString();
            txtmarkfinal.Text = dt.Rows[0]["final"].ToString();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlCommand cmd = new SqlCommand("UpdateMark", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@First_Exam", txtmarkfirst.Text);
            cmd.Parameters.AddWithValue("@Sceand_Exam", txtmarksceand.Text);
            cmd.Parameters.AddWithValue("@Final_Exam", txtmarkfinal.Text);
            cmd.Parameters.AddWithValue("@sid", Convert.ToInt32(Request.QueryString["studentid"].ToString()));

            int result = cmd.ExecuteNonQuery();

            lblmsg.Text = "Update success";
        }
    }
}