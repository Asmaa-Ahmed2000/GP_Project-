using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Add_Category : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty2";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       
         
        protected void Button2_Click(object sender, EventArgs e)
        {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand("insertcategory", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                if (FileUpload1.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

                    if (extension == ".jpg" || extension == ".png")
                    {
                        cmd.Parameters.AddWithValue("@Category_Name", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Category_image", FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));
                        cmd.ExecuteNonQuery();
                        Label1.Text = "Add success";
                    }
                    else
                    {
                        Label1.Text = "Only .Jpg or.Png allowed";
                    }
                }

            }

        }
    }
