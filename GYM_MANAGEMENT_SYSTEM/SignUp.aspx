<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up - Fitness Solutions</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background: url('equipment.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .signup-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .gym-logo {
            width: 80px;
            margin-bottom: 20px;
        }
        .gym-title {
            font-family: 'Arial Black', sans-serif;
            color: #3a86ff;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .login-link {
            color: #3a86ff;
        }
        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex align-items-center justify-content-center min-vh-100">
            <div class="signup-container text-center col-md-6">
                <!-- Logo and Title -->
                <img src="img.png" alt="Gym Logo" class="gym-logo"/>
                <h1 class="gym-title">Fitness Solutions</h1>

                <!-- Sign Up Form -->
                <form>
                    <div class="form-group">
                        <label for="username">Full Name</label>
                        <input type="text" class="form-control" id="username" placeholder="Enter your full name" required />
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter your email" required />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" placeholder="Enter your password" required />
                    </div>
                    <div class="form-group">
                        <label for="confirm-password">Confirm Password</label>
                        <input type="password" class="form-control" id="confirm-password" placeholder="Confirm your password" required />
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </form>

                <!-- Login Option -->
                <p class="mt-3">
                    Already have an account? 
                    <a href="Login.aspx" class="login-link">Login here</a>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
