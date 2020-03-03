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
    public partial class login : System.Web.UI.Page
    {
        string sqlconstring = @"Data Source = .;Integrated Security = true ; Database =system ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("login_system", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@name", txtusername.Text);
            da.SelectCommand.Parameters.AddWithValue("@password", txtpassword.Text);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
               
               
                    Session["User_Id"] = dt.Rows[0]["id-admin"].ToString();
                    Response.Redirect("Home.aspx");
              
               
            }
            else
            {
                lblmesg.Text = "please...Try again";
            }  
        }
    }
}