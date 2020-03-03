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
    public partial class ADD_Gift : System.Web.UI.Page
    {
        string connection = @"Data Source= .; Integrated Security=True; Database=giffty2";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();

            SqlDataAdapter daC = new SqlDataAdapter("GetAllCategory", connection);
            daC.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dtC = new DataTable();
            daC.Fill(dtC);

            ddlCategory.DataSource = dtC;
            ddlCategory.DataTextField = "Category_Name";
            ddlCategory.DataValueField = "Category_ID";
            ddlCategory.DataBind();
        }


        protected void btnADD_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("Add_Gift", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));

            cmd.Parameters.AddWithValue("@gift_Name", txtgiftName.Text);
            cmd.Parameters.AddWithValue("@gift_image", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@Description", txtarea.Text);
            cmd.Parameters.AddWithValue("@Price", txtprice.Text);
            cmd.Parameters.AddWithValue("@Category_Id", Convert.ToInt32(Request.QueryString["ddlCategory"].ToString()));
            //cmd.Parameters.AddWithValue("@Category_Id", Convert.ToInt32("Category_Id".value.ToString()));



            cmd.ExecuteNonQuery();
            lblmsg.Text = "Add success";

        }
    }
}