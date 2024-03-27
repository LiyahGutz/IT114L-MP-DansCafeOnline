<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Dans_Cafe.SignUp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | Dan's Cafe</title>
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
        
        .signup_box {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 5px;
        }
        
        .signup-header h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        #signup_button {
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
        
        #signup_button:hover {
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
        
        .error-message {
            color: red;
            font-size: 80%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="signup_box">
                <div class="signup-header">
                    <h2>Sign Up</h2>
                </div>
                <div class="signup-content">
                    <div>
                        <asp:Label ID="FnameLbl" runat="server" AssociatedControlID="Fname">First Name:</asp:Label>
                        <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVFname" runat="server" ControlToValidate="Fname" ErrorMessage="* Required" Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                    </div>
                    <div>
                        <asp:Label ID="LnameLbl" runat="server" AssociatedControlID="Lname">Last Name:</asp:Label>
                        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVLname" runat="server" ControlToValidate="Lname" ErrorMessage="* Required" Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                    </div>
                    <div>
                        <asp:Label ID="UserLbl" runat="server" AssociatedControlID="Username">Username:</asp:Label>
                        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVUserName" runat="server" ControlToValidate="Username" ErrorMessage="* Required" Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                    </div>
                    <div>
                        <asp:Label ID="EmailLbl" runat="server" AssociatedControlID="Email">Email:</asp:Label>
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="Email" ErrorMessage="* Required" Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                    </div>
                    <div>
                        <asp:Label ID="PwordLbl" runat="server" AssociatedControlID="IniPword">Password:</asp:Label>
                        <asp:TextBox ID="IniPword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVIniPword" runat="server" ControlToValidate="IniPword" ErrorMessage="* Required" Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                    </div>
                    <div>
                        <asp:Label ID="CPwordLbl" runat="server" AssociatedControlID="Password">Confirm Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToCompare="IniPword" ControlToValidate="Password" ErrorMessage="Passwords do not match" Type="String" Operator="Equal" ValidationGroup="signupValidation" />
                    </div>
                    <asp:Button ID="signup_button" runat="server" Text="Sign Up" OnClick="submitBtn_Click" ValidationGroup="signupValidation" />
                    <div class="error-message">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="signupValidation" DisplayMode="BulletList" />
                    </div>
                    <asp:HyperLink ID="LinkToLogin" NavigateUrl="~/login.aspx" Text="Already have an account? Log In" runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

