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
    public partial class Login : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty2";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Login_User", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@User_Name", txtuserlogin.Text);
            da.SelectCommand.Parameters.AddWithValue("@password", passwordlogin.Text);


            DataTable td = new DataTable();
            da.Fill(td);
            if (td.Rows.Count > 0)
            {
                if (td.Rows[0]["Roll_ID"].ToString() == "1" || td.Rows[0]["Roll_ID"].ToString() == "2")
                {
                    //Session["Name"] = txtuserlogin.Text;
                    Session["Name"] = td.Rows[0]["User_ID"].ToString();
                    Response.Redirect("Dashboard.aspx");
                }
                else if (td.Rows[0]["Roll_ID"].ToString() == "3")
                {
                    Session["Customer"] = td.Rows[0]["User_ID"].ToString();
                    //Session["customer"] = txtuserlogin.Text;
                    Response.Redirect("Home.aspx");
                }

                else
                {
                    lblmsg1.Text = "sorry... try again";
                }
            }
        }


            protected void btnRegister_Click(object sender, EventArgs e)
            {
                SqlConnection conection = new SqlConnection(connection);
                conection.Open();
                SqlCommand cmd = new SqlCommand("ADD_Cutomer", conection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@User_Name", txtuserRegister.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Roll_ID", 3);
                cmd.Parameters.AddWithValue("@Password", txtpasswordRegister.Text);
                cmd.Parameters.AddWithValue("@phone", txtphone.Text);
                cmd.ExecuteNonQuery();
                lblmsg2.Text = "Add success";
            }

        }
    }

    
