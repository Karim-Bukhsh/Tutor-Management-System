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
    public partial class Contact : System.Web.UI.Page
    {
        string con_Str = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Reset Contact form after Subimission....
        void ResetContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.ClearSelection();
            MessageTextBox.Text = "";
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(con_Str); //object of connection string
            string sp = "spContact_Insert"; // variable for store procedure
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;     // shows that use of store procedure insted of simple query
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a > 0)       // to check that above code is working properly or not
            {
                //Response.Write("<script>alert('Message Submitted Successfully....')</script>");
                //Response.Write("<Script>SuccessContact();</Script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact()", true);
                ResetContact();
            }
            else
            {
                //Response.Write("<script>alert('Error..! Message not Submitted..')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact()", true);
            }
            con.Close();
        }
    }
}