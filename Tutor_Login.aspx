<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Login.aspx.cs" Inherits="TMS_Project.Tutor_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tutor Login</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
<style>
    .jumbotron {
        background-color: #f8f9fa;
        padding: 2rem 1rem;
        border-radius: 0.3rem;
        height: 200px;
        display: flex;
        justify-content: center;
        align-items: center;
        
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
            <div class="container">
                <div class="row justify-content-center mt-6">
                    <div class="col-md-6 shadow-lg p-3 mb-5 rounded" style="background-color:whitesmoke">
                        <div class="jumbotron bg-primary text-white text-center">
                            <h2 class="text-center mb-6">Tutor Login</h2>
                        </div>
                            <div class="form-group">
                                <label for="txtUsername">Username</label>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red" ValidationGroup="LoginValidation" />
                            </div>
                            <div class="form-group">
                                <label for="txtPassword">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" ValidationGroup="LoginValidation" />
                            </div>
                            <%--<div class="form-group">
                                <label for="txtRePassword">Re-enter Password</label>
                                <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Re-enter your password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRePassword" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Re-enter Password is required" ForeColor="Red" ValidationGroup="LoginValidation" />
                            </div>--%>
                            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-block"  ValidationGroup="LoginValidation" />
                            <div>
                               If you don't have an account,<a href="Tutor_Signup.aspx" class="btn btn-link">Register Here</a>
                            </div>
                    </div>
                </div>
            </div>


</asp:Content>
