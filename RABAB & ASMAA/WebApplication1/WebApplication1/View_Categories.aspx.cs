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
    public partial class View_Categories : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty2";

        protected void Page_Load(object sender, EventArgs e)
        {
          if (!IsPostBack)
            {
                bindgridid();
            }
        }
         void bindgridid()
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("view_categoryInfo", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void iconeditcategory_Click(object sender, EventArgs e)
        {
        
        }

        protected void iconviewcategory_Click(object sender, EventArgs e)
        {
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd  = new SqlCommand("deletecategory", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idcategory", GridView1.DataKeys[e.RowIndex].Value);
            cmd.ExecuteNonQuery();
            bindgridid();

        }
    }
}