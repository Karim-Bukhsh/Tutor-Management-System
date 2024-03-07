using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace TMS_Project.Student
{
    public partial class View_Tutors : System.Web.UI.Page
    {
        string con_Str = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["std_username"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(con_Str); //object of connection string
            string query = "Select * from TutorSignUp";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }

        protected void btnSearch_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(con_Str); //object of connection string
            string query = "Select * from TutorSignUp where ([name] like ('%" + TxtSearch.Text + "%') or [gender] like ('%" + TxtSearch.Text + "%') or [country] like ('%" + TxtSearch.Text + "%') or [city] like ('%" + TxtSearch.Text + "%') or [country] like ('%" + TxtSearch.Text + "%') or [degree] like ('%" + TxtSearch.Text + "%') or [experience] like ('%" + TxtSearch.Text + "%'))";

            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Record Found')</script>");
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }

        }
    }
}