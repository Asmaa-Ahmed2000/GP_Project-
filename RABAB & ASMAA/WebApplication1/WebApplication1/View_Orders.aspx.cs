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
    public partial class View_Orders : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty2";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("view_OrdersInfo", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void icondeleteorders_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(connection);
            //con.Open();
            //SqlDataAdapter da = new SqlDataAdapter("deleteorders", con);
            //da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.AddWithValue("@orderid", Convert.ToInt32(Request.QueryString["Ordre_ID"].ToString()));
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

        }
    }
}