using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Add_Editor : System.Web.UI.Page
    {
        string connection = @"Data Source =ASOOM\SQLEXPRESS; Integrated Security=True; Database=giffty2";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection(connection);
            conection.Open();
            SqlCommand cmd = new SqlCommand("ADD_Editor", conection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@User_Name", txtuser.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@Roll_ID", 2);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Phone", txtphone.Text);

            cmd.ExecuteNonQuery();
            lblmsg3.Text = "Add success";
        }
    }
}