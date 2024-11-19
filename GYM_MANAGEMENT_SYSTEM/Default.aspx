<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: url('equipment.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Roboto', sans-serif;
        }

        main {
            background-color: rgba(255, 255, 255, 0.8); 
            padding: 20px;
            border-radius: 15px;
        }

        .carousel img {
            max-height: 450px;
            object-fit: cover;
        }

        .btn-signup {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            border: none;
            color: white;
            font-size: 20px;
            padding: 15px 30px;
            border-radius: 50px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .btn-signup:hover {
            transform: scale(1.1);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .feature-section img {
            border: 5px solid #ff7e5f;
            transition: transform 0.3s;
        }

        .feature-section img:hover {
            transform: scale(1.1);
        }
    </style>

    <main>
        <!-- Hero Section -->
        <div id="heroCarousel" class="carousel slide mb-5" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="gym-hero2.jpg" class="d-block w-100" alt="Stay Fit">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="display-4">Welcome to Your Fitness Journey</h1>
                        <p class="lead">Your one-stop solution for fitness management.</p>
                        <a href="SignUp.aspx" class="btn btn-signup">Join Us Now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="gym-hero2.jpg" class="d-block w-100" alt="Push Limits">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="display-4">Stay Fit, Stay Healthy</h1>
                        <p class="lead">Achieve your goals with expert trainers and state-of-the-art facilities.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="gym-hero3.jpg" class="d-block w-100" alt="Achieve Goals">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="display-4">Transform Your Life</h1>
                        <p class="lead">Join our vibrant community today.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Features Section -->
        <section class="container my-5 feature-section">
            <h2 class="text-center mb-4 text-primary">Why Choose Us?</h2>
            <div class="row text-center">
                <div class="col-md-4">
                    <img src="equipment.jpg" alt="Equipment" class="img-fluid rounded-circle mb-3" width="150">
                    <h3>Modern Equipment</h3>
                    <p>State-of-the-art equipment to enhance your workout experience.</p>
                </div>
                <div class="col-md-4">
                    <img src="trainers.jpg" alt="Trainers" class="img-fluid rounded-circle mb-3" width="150">
                    <h3>Expert Trainers</h3>
                    <p>Certified trainers to guide and motivate you throughout your journey.</p>
                </div>
                <div class="col-md-4">
                    <img src="gym-hero1.jpg" alt="Wellness" class="img-fluid rounded-circle mb-3" width="150">
                    <h3>Wellness Programs</h3>
                    <p>Comprehensive wellness plans tailored to meet your unique needs.</p>
                </div>
            </div>
        </section>

        <!-- Call-to-Action Section -->
        <section class="bg-dark text-white py-5">
            <div class="container text-center">
                <h2>Join Our Gym Today!</h2>
                <p class="lead">Experience the best facilities, expert trainers, and a vibrant community.</p>
                <a href="SignUp.aspx" class="btn btn-signup">Sign Up Now</a>
            </div>
        </section>

        <!-- Testimonials Section -->
        <section class="container my-5">
            <h2 class="text-center mb-4 text-primary">What Our Members Say</h2>
            <div class="row text-center">
                <div class="col-md-4">
                    <blockquote class="blockquote">
                        <p>"This gym changed my life! The trainers are amazing."</p>
                        <footer class="blockquote-footer">John Doe</footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote class="blockquote">
                        <p>"I love the variety of programs offered. Highly recommend!"</p>
                        <footer class="blockquote-footer">Jane Smith</footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote class="blockquote">
                        <p>"The facilities are top-notch, and the staff is so supportive."</p>
                        <footer class="blockquote-footer">Chris Lee</footer>
                    </blockquote>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
