<%@ Page MasterPageFile="~/AdminMasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="Dans_Cafe.AdminView" %>

<asp:Content ID="Admin" ContentPlaceHolderID="AdminContent" runat="server">
        <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        .admin-dashboard {
            text-align: center;
            padding: 50px 0;
        }

        .title {
            margin-bottom: 30px;
            text-align: center;
        }

        .title h2 {
            font-size: 42px;
            color: #333;
        }
        .adminDashboard {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
        }

        .card {
            width: 250px;
            margin: 0 20px;
            padding: 20px;
            border-radius: 10px;
            background-color: #F1E2D2;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card .icon {
            font-size: 35px;
            margin-bottom: 10px;
            color: #2E1308;
        }

        .card h4 {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }

        .card .btn {
            background-color: #2E1308;
            color: #fff;
            border: none;
            padding: 10px 40px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 20px;
        }

        .card .btn:hover {
            background-color: #B19470;
        }

        @media only screen and (max-width: 768px) {
            .adminDashboard {
                flex-direction: column;
            }

            .card {
                width: 250px;
                margin: 0 20px 20px 20px;
            }

        }

    </style>

    <div class="admin-dashboard">
        <div class="title">
            <h2>Admin Dashboard</h2>
        </div>
        <%--<form id="form1" runat="server">--%>
            <div class="adminDashboard">
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-user-plus"></i>
                        </div>
                    <h4>Create Staff</h4>
                    <p>add new staff member</p><br />
                    <asp:Button class="btn" runat="server" Text="Add Staff" OnClick="CreateStaff_Click"/>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-user-minus"></i>
                    </div>
                    <h4>Manage Staff</h4>
                    <p>remove staff member</p><br />
                    <asp:Button class="btn" runat="server" Text="Manage Staff" OnClick="RemoveStaff_Click"/>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-chart-line"></i>
                    </div>
                    <h4>Sales Report</h4>
                    <p>view sales performance</p><br />
                    <asp:Button class="btn" runat="server" Text="View"/>
                </div>
            </div>
        <%--</form>--%>
    </div>
</asp:Content>
