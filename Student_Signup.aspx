<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />


    <!DOCTYPE html>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 


    <div class="container">
        <div class="jumbotron bg-primary text-white rounded d-flex justify-content-center align-items-center" style="height: 200px;">
            <h1 class="display-4">Student Registration</h1>
        </div>
        <div>
            <p class="lead">Please fill out the form below to register as a student.</p>
        </div>
        
                    <div class="row">
                        <div class="col-md-4">

                            <label for="txtName" class="form-label">Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" Text="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtFatherName" class="form-label">Father Name</label>
                            <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control" placeholder="Enter father's name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFatherName" runat="server" ControlToValidate="txtFatherName" ErrorMessage="Father's Name is required" Text="Father's Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtSurname" class="form-label">Surname</label>
                            <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control" placeholder="Enter your surname"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSurname" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="ddlGender" class="form-label">Gender</label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Gender not Selected" InitialValue="Select"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtAge" class="form-label">Age</label>
                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Enter your age"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 05 and 50" ForeColor="Red" Type="Integer" MinimumValue="05" MaximumValue="50"></asp:RangeValidator>
                            <br />
                            <br />
                            <label for="txtCountry" class="form-label">Country</label>
                            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Enter your country"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="txtCountry" ErrorMessage="Country is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>



                        <div class="col-md-4">
                            <label for="txtCity" class="form-label">City</label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Enter your city"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtAddress" class="form-label">Address</label>
                            <asp:TextBox ID="txtAddress" TextMode="MultiLine" Columns="4" Rows="5" runat="server" CssClass="form-control" placeholder="Enter your address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtClass" class="form-label">Class</label>
                            <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" placeholder="Enter your Class"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvClass" runat="server" ControlToValidate="txtClass" ErrorMessage="Class is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="ddlGoing" class="form-label">Going To</label>
                            <asp:DropDownList ID="ddlGoing" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                <asp:ListItem Text="School" Value="Graduated"></asp:ListItem>
                                <asp:ListItem Text="College" Value="Masters"></asp:ListItem>
                                <asp:ListItem Text="University" Value="PHD"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvGoing" runat="server" ControlToValidate="ddlGoing" InitialValue="Select" ErrorMessage="Going To not Selected"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <label for="txtSubject" class="form-label">Subject</label>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Enter the subject"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4">
                            <label for="txtContactNo" class="form-label">Contact Number</label>
                            <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control" placeholder="Enter your contact number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContactNo" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact Number is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="ddlTuitionType" class="form-label">Tuition Type</label>
                            <asp:DropDownList ID="ddlTuitionType" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                <asp:ListItem Text="In-Person" Value="In-Person"></asp:ListItem>
                                <asp:ListItem Text="Online" Value="Online"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvTuitionType" runat="server" ControlToValidate="ddlTuitionType" InitialValue="Select" ErrorMessage="Tuition Type not Selected"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="ddlTutorPreferred" class="form-label">Tutor Preferred</label>
                            <asp:DropDownList ID="ddlTutorPreferred" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                <asp:ListItem Text="Graduated" Value="Graduated"></asp:ListItem>
                                <asp:ListItem Text="Masters" Value="Masters"></asp:ListItem>
                                <asp:ListItem Text="M.Phil" Value="M.Phil"></asp:ListItem>
                                <asp:ListItem Text="PHD" Value="PHD"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvTutorPreferred" runat="server" ControlToValidate="ddlTutorPreferred" InitialValue="Select" ErrorMessage="Tutor Preferred not Selected"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtUsername" class="form-label">Username</label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label for="txtPassword" class="form-label">Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPasswordFormat" runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" ErrorMessage="Password must be at least 8 characters, one lowercase letter, one uppercase letter, and one digit" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                            <label for="txtRePassword" class="form-label">Re-Enter Password</label>
                            <asp:TextBox ID="txtRePassword" runat="server" CssClass="form-control" placeholder="Re-Enter your password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvRePassword" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Re-Enter Password is required"   ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToValidate="txtRePassword" ControlToCompare="txtPassword" Operator="Equal" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                        </div>

                    </div>   
                <br />
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <asp:Button ID="BtnSignup" runat="server" Text="Signup" CssClass="btn btn-primary rounded" OnClick="BtnSignup_Click" Style="width:100%;" />
                    </div>

                </div>
                
        </div>
    <br />
</asp:Content>
