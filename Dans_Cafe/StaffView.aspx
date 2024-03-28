<%@ Page MasterPageFile="~/StaffMasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="StaffView.aspx.cs" Inherits="Dans_Cafe.StaffView" %>

<asp:Content ID="Staff" ContentPlaceHolderID="StaffContent" runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
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

        .staff-dashboard {
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
        .staffDashboard {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
        }

        .card {
            width: 265px;
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
            .staffDashboard {
                flex-direction: column;
            }

            .card {
                width: 265px;
                margin: 0 20px 20px 20px;
            }

        }

    </style>

    <div class="staff-dashboard">
        <div class="title">
            <h2>Staff Dashboard</h2>
        </div>
<%--        <form id="form1" runat="server">--%>
            <div class="staffDashboard">
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-mug-hot"></i>
                    </div>
                    <h4>Manage Product</h4><br />
                    <asp:Button class="btn" runat="server" Text="Manage Product"/>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-basket-shopping"></i>
                    </div>
                    <h4>Manage Order</h4><br />
                    <asp:Button class="btn" runat="server" Text="Manage Order"/>
                </div>
            </div>
        <%--</form>--%>
    </div>
</asp:Content>