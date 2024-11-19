<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.ForgotPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* General styling */
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
            color: #fff;
        }

        /* Background video styling */
        .bg-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
            filter: brightness(60%);
        }

        /* Centered card */
        .forgot-password-container {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .forgot-password-card {
            background: rgba(0, 0, 0, 0.8);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.7);
            width: 400px;
            text-align: center;
        }

        .btn-primary {
            background-color: #ff4500;
            border: none;
            padding: 10px 20px;
            border-radius: 20px;
        }

        .btn-primary:hover {
            background-color: #ff5722;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: #fff;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .logo {
            margin-bottom: 20px;
        }

        .back-link {
            color: #ff4500;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Background Video -->
        <video class="bg-video" autoplay muted loop>
            <source src="gym-background.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>

        <!-- Forgot Password Form -->
        <div class="forgot-password-container">
            <div class="forgot-password-card">
                <!-- Gym Logo -->
                <img src="img.png" alt="Fitness Solutions" class="logo" width="100" />
                <h2 class="mb-4">Forgot Password</h2>
                <p class="mb-4">Reset your password securely below.</p>

                <!-- Form Fields -->
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Enter your email" required />
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Enter new password" required />
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Re-type new password" required />
                </div>

                <!-- Update Button -->
                <button type="submit" class="btn btn-primary btn-block">Update Password</button>

                <!-- Back to Login Link -->
                <div class="mt-4">
                    <p>Remembered your password? <a href="Login.aspx" class="back-link">Go back to login</a></p>
                </div>
            </div>
        </div>

        <!-- Bootstrap Script -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
