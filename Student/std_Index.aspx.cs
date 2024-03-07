﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.Student
{
    public partial class std_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["std_username"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }
        }
    }
}