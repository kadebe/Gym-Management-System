<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: linear-gradient(to bottom right, #e3f2fd, #bbdefb);
        }

        main {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 40px;
        }

        .social-icons a {
            margin: 0 10px;
            color: #007bff;
            font-size: 24px;
            transition: color 0.3s ease;
        }

        .social-icons a:hover {
            color: #0056b3;
        }

        footer {
            margin-top: 20px;
            text-align: center;
            color: #6c757d;
        }
    </style>

    <main class="container">
        <div class="text-center mb-4">
            <h2 class="display-4 text-primary"><%: Title %></h2>
            <p class="lead">Get in touch with us!</p>
        </div>

        <div class="row">
            <!-- Contact Information Section -->
            <div class="col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title text-primary">Office Address</h5>
                        <p class="card-text">
                            <strong>Gym Management System</strong><br>
                            One Microsoft Way<br>
                            Redmond, WA 98052-6399<br>
                            <abbr title="Phone">Phone:</abbr> 425.555.0100
                        </p>
                        <h5 class="card-title text-primary mt-4">Email Us</h5>
                        <p class="card-text">
                            <strong>Support:</strong> <a href="mailto:Support@example.com">Support@example.com</a><br>
                            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
                        </p>
                    </div>
                </div>
            </div>

            <!-- Contact Form Section -->
            <div class="col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title text-primary">Send Us a Message</h5>
                        <form>
                            <div class="form-group">
                                <label for="name">Your Name</label>
                                <input type="text" class="form-control" id="name" placeholder="Enter your name">
                            </div>
                            <div class="form-group">
                                <label for="email">Your Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter your email">
                            </div>
                            <div class="form-group">
                                <label for="message">Your Message</label>
                                <textarea class="form-control" id="message" rows="3" placeholder="Enter your message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Social Media Section -->
        <div class="text-center mt-5">
            <h4 class="text-primary">Follow Us on Social Media</h4>
            <div class="social-icons">
                <a href="https://facebook.com" target="_blank" class="mr-3"><i class="fab fa-facebook"></i></a>
                <a href="https://twitter.com" target="_blank" class="mr-3"><i class="fab fa-twitter"></i></a>
                <a href="https://instagram.com" target="_blank" class="mr-3"><i class="fab fa-instagram"></i></a>
                <a href="https://linkedin.com" target="_blank"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>

        <!-- Footer -->
        <footer class="mt-4">
            <p>© 2024 Gym Management System. All rights reserved.</p>
        </footer>
    </main>
</asp:Content>
