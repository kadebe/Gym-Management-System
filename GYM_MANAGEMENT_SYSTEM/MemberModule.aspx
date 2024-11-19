<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberModule.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.MemberModule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background: url('gym-hero.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
        }
        .module-container {
            margin: 50px auto;
        }
        .card {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .card-header {
            background-color: #007bff;
            font-size: 20px;
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
        .form-control {
            background-color: #333;
            color: #fff;
            border: 1px solid #555;
        }
        .form-control:focus {
            background-color: #222;
            color: #fff;
            border-color: #007bff;
        }
    </style>

    <div class="container module-container">
        <div class="row">
            <!-- Profile Section -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Your Profile</div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Full Name</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" Text="John Doe" />
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="johndoe@gmail.com" />
                        </div>
                        <div class="mb-3">
                            <label for="contact" class="form-label">Contact</label>
                            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Text="+123456789" />
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Text="123 Main Street, City, State" />
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile" CssClass="btn btn-primary" OnClick="UpdateProfile_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Active Plan Section -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Your Active Plan</div>
                    <div class="card-body">
                        <table class="table table-striped table-dark">
                            <thead>
                                <tr>
                                    <th>Plan ID</th>
                                    <th>Plan Name</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>P001</td>
                                    <td>One Year - Monthly</td>
                                    <td>2024-01-01</td>
                                    <td>2024-12-31</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-center mt-3">
                            <asp:Button ID="btnViewPlanDetails" runat="server" Text="View Plan Details" CssClass="btn btn-primary" OnClick="ViewPlanDetails_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
