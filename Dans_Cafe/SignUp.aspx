<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Dans_Cafe.SignUp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | Dan's Cafe</title>
    <link rel="stylesheet" type="text/css" href="assets/css/signUp.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
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
                        <asp:RequiredFieldValidator ID="RFVFname" runat="server" ControlToValidate="Fname" ErrorMessage="First name is required." Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                        <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="LnameLbl" runat="server" AssociatedControlID="Lname">Last Name:</asp:Label>
                        <asp:RequiredFieldValidator ID="RFVLname" runat="server" ControlToValidate="Lname" ErrorMessage="Last name is required." Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="UserLbl" runat="server" AssociatedControlID="Username">Username:</asp:Label>
                        <asp:RequiredFieldValidator ID="RFVUserName" runat="server" ControlToValidate="Username" ErrorMessage="Username is required." Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="EmailLbl" runat="server" AssociatedControlID="Email">Email:</asp:Label>
                        <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="Email" ErrorMessage="Email is required." Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Invalid email format" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:Label ID="PwordLbl" runat="server" AssociatedControlID="IniPword">Password:</asp:Label>
                        <asp:RequiredFieldValidator ID="RFVIniPword" runat="server" ControlToValidate="IniPword" ErrorMessage="Password is required." Text="*" ForeColor="Red" ValidationGroup="signupValidation" />
                        <asp:TextBox ID="IniPword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="CPwordLbl" runat="server" AssociatedControlID="Password">Confirm Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToCompare="IniPword" ControlToValidate="Password" Text="Passwords do not match" ForeColor="Red" Type="String" Operator="Equal" ValidationGroup="signupValidation" />
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

