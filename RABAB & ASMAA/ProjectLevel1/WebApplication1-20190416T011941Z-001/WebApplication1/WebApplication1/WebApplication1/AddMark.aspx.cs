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
    public partial class AddMark : System.Web.UI.Page
    {
        string sqlconstring = @"Data Source =.;Integrated Security = true ; Database =system ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["StudentID"] != null)
            {
                if (CheckStudentIsExistMark(Convert.ToInt32(Request.QueryString["StudentID"].ToString())) == false)
                {

                }
                else
                {
                    DataTable StudentMarks = GetMarksBySID(Convert.ToInt32(Request.QueryString["StudentID"].ToString()));
                    txtfirst.Text = StudentMarks.Rows[0]["first"].ToString();
                    txtsceand.Text = StudentMarks.Rows[0]["second"].ToString();
                    txtfinal.Text = StudentMarks.Rows[0]["final"].ToString();
                    ddlCourses.SelectedValue = StudentMarks.Rows[0]["courseid"].ToString();

                }

                ddlCourses.DataSource = GetallCourses();
                ddlCourses.DataTextField = "coursename";
                ddlCourses.DataValueField = "courseid";
                ddlCourses.DataBind();

                DataTable student = GetNameById(Convert.ToInt32(Request.QueryString["StudentID"].ToString()));
                lblstudent.InnerText = student.Rows[0]["name"].ToString();
            }
            else
            {
                Response.Redirect("Marks.aspx");
            }
        }

            protected void btnadd_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["StudentID"] != null)
            {
                if (CheckStudentIsExistMark(Convert.ToInt32(Request.QueryString["StudentID"].ToString())) == false)
                {


                    SqlConnection con = new SqlConnection(sqlconstring);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert_marks", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Request.QueryString["StudentID"].ToString()));
                    cmd.Parameters.AddWithValue("@CourseID", ddlCourses.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@First_Exam", txtfirst.Text);
                    cmd.Parameters.AddWithValue("@Second_Exam", txtsceand.Text);
                    cmd.Parameters.AddWithValue("@Final_Exam", txtfinal.Text);
                    cmd.ExecuteNonQuery();
                    lblmsg.Text = "Add success";
                }
                else
                {
                    SqlConnection con = new SqlConnection(sqlconstring);
                    con.Open();
                    SqlDataAdapter cmd = new SqlDataAdapter("UpdateMark", con);
                    cmd.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.SelectCommand.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Request.QueryString["StudentID"].ToString()));
                    cmd.SelectCommand.Parameters.AddWithValue("@CourseID", ddlCourses.SelectedItem.Value);
                    cmd.SelectCommand.Parameters.AddWithValue("@First_Exam", txtfirst.Text);
                    cmd.SelectCommand.Parameters.AddWithValue("@Second_Exam", txtsceand.Text);
                    cmd.SelectCommand.Parameters.AddWithValue("@Final_Exam", txtfinal.Text);

                    lblmsg.Text = "update success";
                }
            }
            //}
            //else
            //{
            //    lblerror.Text = "This Student have marks in this Course";

            //}


            else
            {
                Response.Redirect("Marks.aspx");
            }
            
           
        }

        DataTable GetNameById(int studentId)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetStudentById", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@sID", studentId);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        DataTable GetallCourses()
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetallCourses", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        //public bool CheckUsername(string username)
        //{

        //}

       DataTable GetMarksBySID(int sid)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetMarksBySID", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@sid", Convert.ToInt32(Request.QueryString["StudentID"].ToString()));
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }


        bool CheckStudentIsExistMark(int sID)
        {
            SqlConnection con = new SqlConnection(sqlconstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("CheckStudentIsExistMark", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@sID", Convert.ToInt32(Request.QueryString["StudentID"].ToString()));
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}