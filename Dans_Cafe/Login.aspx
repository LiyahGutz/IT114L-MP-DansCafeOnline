<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dans_Cafe.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 5px 5px;
            padding: 10px 10px;
        }

        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login_box {
            background-color: #fff;
            padding: 20px 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            border-radius: 8px;
            display:flex;
            justify-content: space-between;
            align-items:center;
            flex-grow:inherit;
            flex-direction:column;
            margin:5px;
        }
        .login-header h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-button {
            width: 100%;
            padding: 10px;
            background-color: #4B3621;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin-top:20px;
            margin-bottom:5px;
            font-size:120%;
        }
        .login-button:hover {
            background-color: #9F8170;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
            font-size:medium;
        }
    </style>
    <title>Login | Dan's Cafe</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="login_box">
                <div class="login-header">
                    <h2>Login</h2>
                </div>
                <div >
                    <%--userN--%>
                    <div class="">
                        <asp:Label runat="server" ID="userNlbl">Username: </asp:Label>
                        <asp:RequiredFieldValidator runat="server" Text="*" ControlToValidate="userNtxtbox" TextMode="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div  class="user-name">
                        <asp:TextBox runat="server" ID="userNtxtbox"></asp:TextBox>
                    </div>
                    <%--password--%>
                    <div>
                        <asp:Label runat="server" ID="passlbl">Password: </asp:Label>
                        <asp:RequiredFieldValidator runat="server" Text="*" ControlToValidate="passtxtbox" TextMode="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox runat="server" ID="passtxtbox" TextMode="Password" ></asp:TextBox>
                    </div>

                    <%--login button--%>
                    <asp:Button class="login-button" runat="server" Text="Login" OnClick="loginBtn_Click"/>
                
                    <asp:Label runat="server" >Don't have an account?</asp:Label>
                    <asp:HyperLink ID="LinkCreate" NavigateUrl="~/SignUp.aspx" Text="Don't have an account? Create." runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

