<%@ Page Title="" Language="C#" MasterPageFile="~/Student/std_dashboard.Master" AutoEventWireup="true" CodeBehind="View_Tutors.aspx.cs" Inherits="TMS_Project.Student.View_Tutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-white text-center rounded d-flex justify-content-center align-items-center" style="height: 150px; margin-top: 10px">View Tutor's Detail
            </h1>
        </div>
        <div class="col-md-4">

            <div class="input-group">

                
                <asp:TextBox ID="TxtSearch" runat="server" CssClass="form-control" placeholder="Search Tutor"></asp:TextBox>
                
                <button type="button" id="btnSearch" class="btn btn-primary" runat="server" onserverclick="btnSearch_ServerClick">
                    <i class="fas fa-search"></i>  
                </button>
                
            </div>

            

        </div>
    </div>
    <br />
    <div class="row ">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>

                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size: 15px; color: steelblue;">Name</small>
                            <h3>

                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>

                            </h3>
                        </div>
                        <div class="card-body">
                            <small style="font-size: 15px; color: steelblue;">Email</small>
                            <h6>
                                <asp:Label ID="Label2" runat="server" Text=' <%# Bind("email") %>'></asp:Label></h6>
                            
                            <small style="font-size: 15px; color: steelblue;">Country</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("country") %>'></asp:Label></h5>
                            <small style="font-size: 15px; color: steelblue;">Experience</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("experience") %>'></asp:Label></h5>
                            <small style="font-size: 15px; color: steelblue;">Contact</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("contact") %>'></asp:Label></h5>

                        </div>
                        <div class="card-footer">
                            <small style="font-size: 15px; color: steelblue;">Qualification</small>
                            <h5>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("degree") %>'></asp:Label></h5>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>

        </asp:Repeater>

    </div>

</asp:Content>
