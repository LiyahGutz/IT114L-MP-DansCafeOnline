<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dans_Cafe.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 5px;
            padding: 10px;
        }
        
        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .login_box {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
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
            margin-top: 20px;
            margin-bottom: 5px;
            font-size: 120%;
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
            font-size: medium;
        }
        
        .create-account {
            margin-top: 10px;
            text-align: center;
        }
        
        .create-account a {
            color: #4B3621;
            text-decoration: none;
        }
        
        .create-account a:hover {
            text-decoration: underline;
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
                <div>
                    <div>
                        <asp:Label runat="server" ID="userNlbl">Username:</asp:Label>
                        <asp:TextBox runat="server" ID="userNtxtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="userNtxtbox" ErrorMessage="*" ForeColor="Red" ValidationGroup="loginValidation" />
                    </div>
                    <div>
                        <asp:Label runat="server" ID="passlbl">Password:</asp:Label>
                        <asp:TextBox runat="server" ID="passtxtbox" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="passtxtbox" ErrorMessage="*" ForeColor="Red" ValidationGroup="loginValidation" />
                    </div>
                    <asp:Button class="login-button" runat="server" Text="Login" OnClick="loginBtn_Click" ValidationGroup="loginValidation" />
                    <div class="create-account">
                        <asp:HyperLink ID="LinkCreate" NavigateUrl="~/SignUp.aspx" Text="Don't have an account? Create one." runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
