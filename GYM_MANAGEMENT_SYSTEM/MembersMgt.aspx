<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MembersMgt.aspx.cs" Inherits="GYM_MANAGEMENT_SYSTEM.MembersMgt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Members</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #808080;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            border-radius: 12px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 20px;
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
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="card">
                        <div class="card-header">Manage Members</div>
                        <div class="card-body">
                            <!-- Member Form -->
                            <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                            <div class="mb-3">
                                <label for="txtMemberName" class="form-label">Member Name</label>
                                <asp:TextBox ID="txtMemberName" runat="server" CssClass="form-control" placeholder="Enter member name"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="txtEmail" class="form-label">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="ddlTrainers" class="form-label">Assign Trainer</label>
                                <asp:DropDownList ID="ddlTrainers" runat="server" CssClass="form-select">
                                   
                                </asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="ddlStatus" class="form-label">Membership Status</label>
                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                    <asp:ListItem Value="Approved">Approved</asp:ListItem>
                                    <asp:ListItem Value="Rejected">Rejected</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="d-flex justify-content-between">
                                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="Add Member" OnClick="btnAdd_Click" />
                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-warning" Text="Update Member" OnClick="btnUpdate_Click" />
                                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete Member" OnClick="btnDelete_Click" />
                            </div>
                        </div>
                    </div>

                    <!-- Members Table -->
                    <div class="card mt-4">
                        <div class="card-header">Members List</div>
                        <div class="card-body">
                            <asp:GridView ID="gvMembers" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False"
                                OnSelectedIndexChanged="gvMembers_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="MemberID" HeaderText="ID" />
                                    <asp:BoundField DataField="MemberName" HeaderText="Name" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="AssignedTrainer" HeaderText="Trainer" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
