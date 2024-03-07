<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TMS_Project.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex justify-cntent-center align-items-center">
        <div id="heroCarousel" class="container carousel carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

            <!-- Slide 1 -->
            <div class="carousel-item active">
                <div class="carousel-container">
                    <h2 class="animate__animated animate__fadeInDown">Welcome to <span>Learn Leap Hub</span></h2>
                    <p class="animate__animated animate__fadeInDown">Streamline Your Tutoring Operations Effortlessly</p>
                    <p clas="animate__animated animate__fadeInUp">Empower your educational institution with our comprehensive Tutor Learning System. Effortlessly manage tutors, schedules, student assignments, and more. Say goodbye to administrative hassles and hello to efficiency.</p>
                    <a href="About.aspx" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-item">
                <div class="carousel-container">
                    <h2 class="animate__animated animate__fadeInDown">Unlock Efficiency with Powerful Features</h2>
                    <p class="animate__animated animate__fadeInUp">Our Tutor Management System offers a range of powerful features including tutor profiles, assignment tracking, schedule management, progress tracking, and more. Experience unmatched efficiency and organization in your tutoring operations.</p>
                    <a href="About.aspx" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item">
                <div class="carousel-container">
                    <h2 class="animate__animated animate__fadeInDown">Seamlessly Integrates with Your Institution</h2>
                    <p class="animate__animated animate__fadeInUp">Whether you're a school, college, university, or tutoring center, our system seamlessly integrates with your existing infrastructure. Experience hassle-free implementation and start reaping the benefits immediately.</p>
                    <a href="About.aspx" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
                </div>
            </div>

            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
            </a>

            <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
            </a>

        </div>
    </section>
    <!-- End Hero -->

    <!-- ======= Services Section ======= -->
    <section class="services">
        <div class="container">

            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
                    <div class="icon-box icon-box-pink">
                        <div class="icon"><i class="bx bxl-dribbble"></i></div>
                        <h4 class="title"><a href="#">Find Your Perfect Tutor</a></h4>
                        <p class="description">Connect with experienced tutors who specialize in various subjects.Discover personalized learning experiences tailored to your academic needs.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="icon-box icon-box-cyan">
                        <div class="icon"><i class="bx bx-file"></i></div>
                        <h4 class="title"><a href="">Join Our Tutoring Community</a></h4>
                        <p class="description">Become part of a vibrant community dedicated to academic excellence.Collaborate with passionate tutors and motivated students to achieve your educational goals.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                    <div class="icon-box icon-box-green">
                        <div class="icon"><i class="bx bx-tachometer"></i></div>
                        <h4 class="title"><a href="">Empower Your Learning Journey</a></h4>
                        <p class="description">Access high-quality tutoring services that empower you to succeed academically.Enhance your understanding and mastery of challenging subjects with expert guidance.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                    <div class="icon-box icon-box-blue">
                        <div class="icon"><i class="bx bx-world"></i></div>
                        <h4 class="title"><a href="">Unlock Your Potential Today</a></h4>
                        <p class="description" style="text-align: center;">Unlock your full academic potential with our professional tutoring services.Gain confidence, knowledge, and skills to excel in your studies and beyond.</p>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
        <div class="container">

            <div class="row">
                <div class="col-lg-6 video-box">
                    <img src="assets/img/why-us.png" class="img-fluid" alt="Not Found">
                    
                </div>

                <div class="col-lg-6 d-flex flex-column justify-content-center p-5">

                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-fingerprint"></i></div>
                        <h4 class="title"><a href="">Experienced &  Qualified Tutors</a></h4>
                        <p class="description">Gain access to a network of experienced and highly qualified tutors who are dedicated to helping you achieve your academic goals.</p>
                    </div>

                    <div class="icon-box">
                        <div class="icon"><i class="bx bx-gift"></i></div>
                        <h4 class="title"><a href="">User-Friendly Platform</a></h4>
                        <p class="description">Our user-friendly platform makes it easy to connect with tutors, schedule sessions, and track your progress effortlessly.</p>
                    </div>

                </div>
            </div>

        </div>
    </section>
    <!-- End Why Us Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
        <div class="container">

            <div class="section-title">
                <h2>Features</h2>
                <p>Experience a seamless educational journey with our project's array of features designed to simplify the tutoring process. Effortlessly register as a tutor or student, creating detailed profiles to showcase qualifications, experience, and contact details. Navigate through personalized dashboards tailored for tutors and students, offering user-friendly interfaces for enhanced usability.</p>
            </div>

            <div class="row" data-aos="fade-up">
                <div class="col-md-5">
                    <img src="assets/img/features-1.svg" class="img-fluid" alt="">
                </div>
                <div class="col-md-7 pt-4">
                    <h3>Easy Registration Process</h3>
                    <p class="fst-italic">
                        Simplify the registration process for tutors and students, ensuring a seamless onboarding experience from the start.Empower users to provide detailed information about their qualifications, experience, and preferences, laying the foundation for successful matches.
                    </p>
                    <ul>
                        <li><i class="bi bi-check"></i>Simple signup process for tutors and students.</li>
                        <li><i class="bi bi-check"></i>Detailed input of qualifications and preferences.</li>
                    </ul>
                </div>
            </div>

            <div class="row" data-aos="fade-up">
                <div class="col-md-5 order-1 order-md-2">
                    <img src="assets/img/features-2.svg" class="img-fluid" alt="">
                </div>
                <div class="col-md-7 pt-5 order-2 order-md-1">
                    <h3>Personalized Dashboard</h3>
                    <p class="fst-italic">
                        Enhance user engagement with personalized dashboards tailored to individual roles, providing a customized experience at every login.Present key information in an organized and visually appealing manner, allowing users to navigate their dashboard with ease.
                    </p>
                    <p>
                        <ul>
                            <li><i class="bi bi-check"></i>Role-specific dashboards for tutors and students.</li>
                            <li><i class="bi bi-check"></i>Organized layout for easy navigation.</li>
                            <li><i class="bi bi-check"></i>Student details for tutors; tutor profiles for students.</li>
                        </ul>
                    </p>
                </div>
            </div>

            <div class="row" data-aos="fade-up">
                <div class="col-md-5">
                    <img src="assets/img/features-3.svg" class="img-fluid" alt="">
                </div>
                <div class="col-md-7 pt-5">
                    <h3>Advanced Search Functionality</h3>
                    <p>Empower users with robust search capabilities, enabling them to find the perfect match based on their specific criteria and preferences.Provide intuitive search filters that allow tutors and students to refine their search results with precision and efficiency.</p>
                    <ul>
                        <li><i class="bi bi-check"></i>Robust search options for precise matches.</li>
                        <li><i class="bi bi-check"></i>Intuitive filters for efficient refining.</li>
                        <li><i class="bi bi-check"></i>Criteria-based searches for tutors and students.</li>
                    </ul>
                </div>
            </div>

            <div class="row" data-aos="fade-up">
                <div class="col-md-5 order-1 order-md-2">
                    <img src="assets/img/features-4.svg" class="img-fluid" alt="">
                </div>
                <div class="col-md-7 pt-5 order-2 order-md-1">
                    <h3>Direct Communication</h3>
                    <p class="fst-italic">
                        Foster meaningful connections between tutors and students by facilitating direct communication through integrated messaging features.Encourage open dialogue and collaboration between users, allowing them to discuss learning objectives, schedules, and expectations.
                    </p>
                    <ul>
                        <li><i class="bi bi-check"></i>RobustIntegrated messaging features for direct contact.</li>
                        <li><i class="bi bi-check"></i>Open dialogue for discussing objectives and schedules.</li>
                        <li><i class="bi bi-check"></i>Facilitated interaction between tutors and students.</li>
                    </ul>
                </div>
            </div>

        </div>
    </section>
    <!-- End Features Section -->


</asp:Content>
