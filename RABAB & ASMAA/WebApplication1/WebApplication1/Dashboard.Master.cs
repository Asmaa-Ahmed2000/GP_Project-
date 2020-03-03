using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Dashboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Name"] == null)
            //{
            //    Response.Redirect("~/Login.aspx");

            //}
        }

        protected void btnsign_Click(object sender, EventArgs e)
        {
            //Session.Clear();
            //Session.Abandon();
            //Response.Redirect("~/Login.aspx");
        }
    }
}