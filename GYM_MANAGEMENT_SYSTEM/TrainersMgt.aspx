<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainersMgt.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.TrainersMgt" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trainer Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: url('gym-background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">Manage Trainers</div>
                    <div class="card-body">
                        <!-- Trainer Form -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                        <div class="mb-3">
                            <label for="txtTrainerName" class="form-label">Trainer Name</label>
                            <asp:TextBox ID="txtTrainerName" runat="server" CssClass="form-control" placeholder="Enter trainer name"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="txtSpecialty" class="form-label">Specialty</label>
                            <asp:TextBox ID="txtSpecialty" runat="server" CssClass="form-control" placeholder="Enter specialty"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="ddlStatus" class="form-label">Availability Status</label>
                            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                                <asp:ListItem Value="Available">Available</asp:ListItem>
                                <asp:ListItem Value="Not Available">Not Available</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="d-flex justify-content-between">
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="Add Trainer" OnClick="btnAdd_Click" />
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning" Text="Update Trainer" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete Trainer" OnClick="btnDelete_Click" />
                        </div>
                    </div>
                </div>

                <!-- Trainers Table -->
                <div class="card mt-4">
                    <div class="card-header">Trainers List</div>
                    <div class="card-body">
                        <asp:GridView ID="gvTrainers" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False"
                            OnSelectedIndexChanged="gvTrainers_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="TrainerID" HeaderText="ID" />
                                <asp:BoundField DataField="TrainerName" HeaderText="Name" />
                                <asp:BoundField DataField="Specialty" HeaderText="Specialty" />
                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
