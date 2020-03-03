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
    public partial class gridviwe : System.Web.UI.Page
    {
        string sqlconstring = @"Data Source =.;Integrated Security = true ; Database =system ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Id"] != null)
            {
                DataTable inst = GetInstrById(Convert.ToInt32(Session["User_Id"].ToString()));
                lblwelcome.Text = "Welcome" + "  " + inst.Rows[0]["name"].ToString();

                SqlConnection con = new SqlConnection(sqlconstring);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("home", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
           
        }

        //DataTable GetNameById(int studentId)
        //{
        //    SqlConnection con = new SqlConnection(sqlconstring);
        //    con.Open();
        //    SqlDataAdapter da = new SqlDataAdapter("GetStudentById", con);
        //    da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //    da.SelectCommand.Parameters.AddWithValue("@id", studentId);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    return dt; 
        //}

        DataTable GetInstrById(int instid)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetInstrById", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@id", instid);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        
    }
}