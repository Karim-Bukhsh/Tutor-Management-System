using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace TMS_Project
{
    public partial class Tutor_Login : System.Web.UI.Page
    {
        string con_Str = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(con_Str); //object of connection string
            string query = "Select * from TutorSignUp where username = @username and password = @password"; // variable for store procedure
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                //Response.Write("<script>alert('Login SuccessFull');</script>");
                Session["tutor_username"] = txtUsername.Text;
                Response.Redirect("Tutor/Tutor_Index.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Login Error');</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Oops!\",\r\n  text: \"Username or Password is incorrect...!\",\r\n  icon: \"error\"\r\n});", true);
            }
            con.Close();

        }
    }
}