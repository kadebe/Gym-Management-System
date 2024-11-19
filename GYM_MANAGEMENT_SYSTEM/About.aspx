<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Fullscreen Video Background */
        #video-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        /* Transparent overlay */
        .overlay {
            background: rgba(0, 0, 0, 0.5);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
        }

        main {
            position: relative;
            z-index: 1;
            color: white;
        }

        h2, h3 {
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0);
        }

         .trainer-card {
        background: linear-gradient(to bottom, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.9));
        border-radius: 15px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        color: #ffffff;
        transition: transform 0.3s, box-shadow 0.3s;
        overflow: hidden;
        text-align: center;
    }

        .trainer-card:hover {
        transform: scale(1.05);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
    }

    .trainer-img {
        width: 100%;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        object-fit: cover;
        height: 200px;
        filter: brightness(80%);
    }

        .trainer-card h4 {
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 0.5rem;
    }

    .trainer-card p {
        margin: 0.5rem 0;
        font-size: 0.95rem;
    }

    .social-icons {
        margin-top: 1rem;
    }

    .social-icons a {
        color: #ffffff;
        font-size: 1.2rem;
        margin: 0 10px;
        transition: color 0.3s ease;
    }

    .social-icons a:hover {
        color: #ff7e5f; /* A vibrant hover color */
    }
    </style>

    <!-- Video Background -->
    <video id="video-bg" autoplay loop muted>
        <source src="gym-background2.mp4" type="video/mp4">
        Your browser does not support HTML5 video.
    </video>
    <div class="overlay"></div>

    <main class="container py-5">
        <!-- About Section -->
        <section class="text-center mb-5">
            <h2 class="display-4">About Our Gym</h2>
            <p class="lead">
                At FITNESS SOLUTIONS, we believe in empowering individuals to achieve their fitness goals
                through expert guidance, state-of-the-art facilities, and a supportive community.
            </p>
        </section>

        <!-- Trainers Section -->
        <section class="trainers py-5">
            <h2 class="text-center mb-4">Meet Our Expert Trainers</h2>
            <div class="row">
                <!-- Trainer 1 -->
                <div class="col-md-4 mb-4">
                    <div class="trainer-card">
                        <img src="trainer.jpg" alt="Trainer 1" class="trainer-img">
                        <div class="p-3">
                            <h4>John Doe</h4>
                            <p>Strength Coach</p>
                            <p>John specializes in strength training and conditioning to help you unlock your true potential.</p>
                            <div class="social-icons">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Trainer 2 -->
                <div class="col-md-4 mb-4">
                    <div class="trainer-card">
                        <img src="trainer2.jpg" alt="Trainer 2" class="trainer-img">
                        <div class="p-3">
                            <h4>Jane Smith</h4>
                            <p>Yoga Instructor</p>
                            <p>Jane combines traditional yoga techniques with modern practices to bring balance to your life.</p>
                            <div class="social-icons">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Trainer 3 -->
                <div class="col-md-4 mb-4">
                    <div class="trainer-card">
                        <img src="trainer1.jpg" alt="Trainer 3" class="trainer-img">
                        <div class="p-3">
                            <h4>Chris Lee</h4>
                            <p>Cardio Specialist</p>
                            <p>Chris will push you to your limits with innovative cardio workouts tailored to your goals.</p>
                            <div class="social-icons">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
