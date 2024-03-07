<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TMS_Project.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        //To show popup MEssage....
        function SuccessContact() {
            Swal.fire({
                title: "Congrats!",
                text: "Message Submitted Successfully!",
                icon: "success"
            });
        }
        //To show error message if form not submitted...
        function ErrorContact() {
            Swal.fire({
                title: "Error!",
                text: "Message not Submitted!",
                icon: "error"
            });
        }


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact</h2>
                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>Contact</li>
                </ol>
            </div>

        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
        <div class="container">

            <div class="row">

                <div class="col-lg-6">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3>Our Address</h3>
                                <p>Bahria Town Karachi, Karachi, Sindh Pakistan</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>azadsahib777@gmail.com<br>
                                    karimbukhsh994@gmail.com</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-phone-call"></i>
                                <h3>Call Us</h3>
                                <p>+92 342-8502569<br>
                                    +92 323-7349052</p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="NameTextBox" class="form-control" runat="server" placeholder="Your Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group mt-3 mt-md-0">
                            <asp:TextBox ID="EmailTextBox" class="form-control" runat="server" placeholder="Your Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <asp:DropDownList ID="SubjectDropDownList" class="form-control" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Suggestion</asp:ListItem>
                            <asp:ListItem>Feedback</asp:ListItem>
                            <asp:ListItem>Complain</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" ControlToValidate="SubjectDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group mt-3">
                        <asp:TextBox ID="MessageTextBox" Columns="50" Rows="9" TextMode="MultiLine" class="form-control" runat="server" placeholder="Enter Message"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="MessageTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Invalid Email"></asp:RequiredFieldValidator>
                    </div>
                    <div class="text-center">
                        <asp:Button CssClass="btn btn-success btn-lg mt-2" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    </div>
                </div>


            </div>

        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
    <section class="map mt-2">
        <div class="container-fluid p-0">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3612.7677177543596!2d67.32513237443848!3d25.109723135239946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb34d36ecd2d127%3A0xe36a646487aacb8e!2sBahria%20Town%20Employees%20Residence!5e0!3m2!1sen!2s!4v1709707474142!5m2!1sen!2s" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        </div>
    </section>
    <!-- End Map Section -->
    <br />
</asp:Content>
