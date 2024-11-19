<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: url('gym-background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
        }

        .navbar {
            background-color: #007bff;
        }

        .navbar-brand, .nav-link {
            color: white !important;
        }

        .navbar-brand:hover, .nav-link:hover {
            color: #ffc107 !important;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 12px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 18px;
            text-align: center;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .status-pill {
            display: inline-block;
            padding: 5px 10px;
            border-radius: 15px;
            color: white;
            font-weight: bold;
            font-size: 12px;
        }

        .status-pending {
            background-color: #ffc107;
        }

        .status-approved {
            background-color: #28a745;
        }

        .status-rejected {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="AdminDashboard.aspx">Gym Management System</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="AdminDashboard.aspx">Dashboard</a>
                        </li>                                         
                        <li class="nav-item">
                            <a class="nav-link" href="Payments.aspx">Payments</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Reports.aspx">Reports</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Logout.aspx">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Dashboard Header -->
        <div class="container mt-4">
            <h1 class="text-center text-white">Admin Dashboard</h1>
            <hr class="text-white" />
        </div>

        <!-- Content Section -->
        <div class="container mt-4">
            <div class="row g-4">
                <!-- Manage Members -->
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Manage Members</div>
                        <div class="card-body">
                            <button class="btn btn-primary mb-3" onclick="location.href='AddMember.aspx'">Add New Member</button>
                            <table class="table table-striped table-hover">
                                <thead class="table-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Member Name</th>
                                        <th>Email</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Dynamic Data Placeholder -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Manage Trainers -->
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Manage Trainers</div>
                        <div class="card-body">
                            <button class="btn btn-primary mb-3" onclick="location.href='AddTrainer.aspx'">Add New Trainer</button>
                            <table class="table table-striped table-hover">
                                <thead class="table-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Trainer Name</th>
                                        <th>Specialty</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Dynamic Data Placeholder -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
