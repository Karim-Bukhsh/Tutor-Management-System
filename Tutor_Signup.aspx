<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TMS_Project.Tutor_Signup" %>

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
            <h1 class="display-4">Tutor Registration</h1>
        </div>
        <div>
            <p class="lead">Please fill out the form below to register as a Tutor.</p>
        </div>

        <div class="row">
            <div class="col-md-4">

                <label for="txtName" class="form-label">Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" Text="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />


                <label for="txtSurname" class="form-label">Surname</label>
                <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control" placeholder="Enter your surname"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSurname" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <label for="txtEmail" class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" Text="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />

                <label for="ddlGender" class="form-label">Gender</label>
                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Gender not Selected" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtAge" class="form-label">Age</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Enter your age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 18 and 80" ForeColor="Red" Type="Integer" MinimumValue="05" MaximumValue="50"></asp:RangeValidator>
                <br />

                <label for="ddlMaritalStatus" class="form-label">Marital Status</label>
                <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Widowed</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvMaritalStatus" runat="server" ControlToValidate="ddlMaritalStatus" ErrorMessage="Marital status not selected" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>



            </div>



            <div class="col-md-4">
                <label for="ddlTutorQualification" class="form-label">Qualification</label>
                <asp:DropDownList ID="ddlTutorQualification" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>High School Diploma</asp:ListItem>
                    <asp:ListItem>Bachelor's Degree</asp:ListItem>
                    <asp:ListItem>Master's Degree</asp:ListItem>
                    <asp:ListItem>Ph.D. or Doctorate</asp:ListItem>
                    <asp:ListItem>Professional Certification</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvTutorQualification" runat="server" ControlToValidate="ddlTutorQualification" ErrorMessage="Tutor qualification not selected" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />
                <label for="txtDegree" class="form-label">Degree</label>
                <asp:TextBox ID="txtDegree" runat="server" CssClass="form-control" placeholder="Enter tutor's degree"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDegree" runat="server" ControlToValidate="txtDegree" ErrorMessage="Degree is required" Text="Degree is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="ddlExperience" class="form-label">Experience</label>
                <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Less than 1 year</asp:ListItem>
                    <asp:ListItem>1-3 years</asp:ListItem>
                    <asp:ListItem>3-5 years</asp:ListItem>
                    <asp:ListItem>5+ years</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="ddlExperience" ErrorMessage="Experience not selected" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>


                <br />
                <label for="txtAddress" class="form-label">Address</label>
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" Columns="4" Rows="5" runat="server" CssClass="form-control" placeholder="Enter your address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />


                <label for="txtCity" class="form-label">City</label>
                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Enter your city"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

            </div>


            <div class="col-md-4">
                <label for="txtCountry" class="form-label">Country</label>
                <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Enter your country"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="txtCountry" ErrorMessage="Country is required" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

                <label for="txtContactNo" class="form-label">Contact Number</label>
                <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control" placeholder="Enter your contact number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContactNo" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <label for="txtUsername" class="form-label">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtPassword" class="form-label">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPasswordFormat" runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" ErrorMessage="Password must be at least 8 characters, one lowercase letter, one uppercase letter, and one digit" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <label for="txtRePassword" class="form-label">Re-Enter Password</label>
                <asp:TextBox ID="txtRePassword" runat="server" CssClass="form-control" placeholder="Re-Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRePassword" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Re-Enter Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToValidate="txtRePassword" ControlToCompare="txtPassword" Operator="Equal" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="BtnSignup" runat="server" Text="Signup" CssClass="btn btn-primary rounded" Style="width: 100%;" OnClick="BtnSignup_Click" />

            </div>

        </div>

    </div>
    <br />

</asp:Content>
