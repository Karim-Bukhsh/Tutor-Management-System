<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS_Project.Admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <%--<link href="~/dist/sweetalert2.min.css" rel="stylesheet"/>
    <link src="../dist/sweetalert2.min.js" rel="stylesheet"/>--%>
    <%--cdn for Sweet Alert above files can't be loaded Successfully--%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 

    <style>
    /*CSS for Button*/
    .custom-button {
    width: 100%; /* Set the desired width */
    display:block;
}
    /* CSS for the login container */
    .login-container {
      width: 355px;
      height: 250px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* CSS for the login form #f9f9f9*/
    .login-form {
      /* Add your login form styles here */
    }
  </style>
</head>
<body style="background-color:whitesmoke;" >
    <form id="form1" runat="server">
        <br />
        <div class="container">

            <div class="row">
                <div class="col-md-4 mx-auto rounded " style="-webkit-box-shadow: 0px 0px 13px 9px rgba(107,104,107,1);-moz-box-shadow: 0px 0px 13px 9px rgba(107,104,107,1);box-shadow: 0px 0px 13px 9px rgba(107,104,107,1);">
                    <br />
                    <div class="login-container text-center text-white bg-primary">
                        <h2 text-align="center">Admin Login</h2>
                    </div>
                    <br />
                    <asp:TextBox ID="Usernametxt" placeholder="Enter Name" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Usernametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="Passwordtxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn btn-primary custom-button" OnClick="LoginBtn_Click"/>
                    <br />

                </div>

            </div>
        </div>
    </form>

    <%--<script src="../assets/vendor/js/jquery.min.js"></script>--%>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
