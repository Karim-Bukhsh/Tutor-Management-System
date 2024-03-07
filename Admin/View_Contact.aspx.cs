using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace TMS_Project.Admin
{
    public partial class View_Contact : System.Web.UI.Page
    {
        string con_Str = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"] == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        void BindGridView()
        {
            SqlConnection con = new SqlConnection(con_Str); //object of connection string
            string query = "Select * from contact_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label ItemId = (Label)row.FindControl("LabelID");
            string Id = ItemId.Text;

            SqlConnection con = new SqlConnection(con_Str);
            string query = "Delete from contact_tbl where Id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            if (a > 0)
            {

                // Display alert message using client-side script
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Data Deleted Successfully')", true);
                
                // Bind the GridView again after deletion
                BindGridView();

            }
        }

    }
}