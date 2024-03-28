<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Dans_Cafe.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
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
