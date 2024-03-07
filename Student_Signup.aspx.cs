using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        string con_Str = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetContact()
        {
            txtName.Text = "";
            txtFatherName.Text = "";
            txtSurname.Text = "";
            txtFatherName.Text = "";
            ddlGender.ClearSelection();
            txtAge.Text = "";
            txtCountry.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";
            txtClass.Text = "";
            ddlGoing.ClearSelection();
            txtSubject.Text = "";
            txtContactNo.Text = "";
            ddlTuitionType.ClearSelection();
            ddlTutorPreferred.ClearSelection();
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtRePassword.Text = "";

        }
        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(con_Str); //object of connection string
            try { 
            string query = "insert into StudentSignUp values(@std_name,@fname,@surname,@gender,@age ,@country,@city,@address,@class,@goingto,@subject,@contact,@tutionType,@tutionprefer,@username,@password)"; // variable for  query
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@std_name", txtName.Text);
            cmd.Parameters.AddWithValue("@fname", txtFatherName.Text);
            cmd.Parameters.AddWithValue("@surname", txtSurname.Text);
            cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(txtAge.Text));
            cmd.Parameters.AddWithValue("@country", txtCountry.Text);
            cmd.Parameters.AddWithValue("@city", txtCity.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@class", txtClass.Text);
            cmd.Parameters.AddWithValue("@goingto", ddlGoing.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
            cmd.Parameters.AddWithValue("@contact", txtContactNo.Text);
            cmd.Parameters.AddWithValue("@tutionType", ddlTuitionType.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@tutionprefer", ddlTutorPreferred.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            con.Open();

            int a = cmd.ExecuteNonQuery();

            if (a > 0)       // to check that above code is working properly or not
            {
                    //Response.Write("<script>alert('Registered Successfully....')</script>");
                    //Response.Write("<Script>SuccessContact();</Script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: 'Congratulations..!',\r\n  text: 'Registered Successfully...!',\r\n  icon: 'success'\r\n});", true);

                    ResetContact();
            }
            else
            {
                    //Response.Write("<script>alert('Error..! Not Registered..')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: 'Oops..!',\r\n  text: 'Registered Failed, try another Username...!',\r\n  icon: 'error'\r\n});", true);

                }

            }
            catch(SqlException ex)
            {
                //Response.Write("Exception message: " + ex.Message);

                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: 'Oops..!',\r\n  text: 'Registeration Failed" +
                        "...! " + txtUsername.Text + "already Exist',\r\n  icon: 'error'\r\n});", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: 'Oops..!',\r\n  text: 'Registeration Failed...!',\r\n  icon: 'error'\r\n});", true);
                }
            }
            finally
            {
                con.Close();
            }
            
           
        }
    }
}