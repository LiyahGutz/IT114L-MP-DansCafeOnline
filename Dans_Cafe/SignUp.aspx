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
        margin: 5px 5px;
        padding: 10px 10px;
    }

    .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .signup_box {
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
    .signup-header h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .signup_square {
        padding-right: 15px;
    }
    
    #signup_button {
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
        font-size:medium;
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
                <div class="signup_square">
                    <%--First Name--%>
                    <div>
                        <asp:Label ID="FnameLbl" runat="server">First Name: </asp:Label>                  
                        <asp:RequiredFieldValidator ID="RFVFname" runat="server" ControlToValidate="Fname" TextMode="Password" Text="*" ForeColor="Red"/>
                    </div>
                    <div>
                        <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                    </div>
                    <%--Last Name--%>
                    <div>                
                        <asp:Label ID="LnameLbl" Text="Last Name: " runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVLname" runat="server" ControlToValidate="Lname" Text="*" ForeColor="Red" />
                    </div>
                    <div>
                        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                    </div>
                    <%--Username--%>
                    <div>
                        <asp:Label ID="UserLbl" Text="Username: " runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVUserName" runat="server" ControlToValidate="Username" Text="*" ForeColor="Red" />
                    </div>
                    <div>
                        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                    </div>
                    <%--Email--%>
                    <div>
                        <asp:Label ID="EmailLbl" Text="Email: " runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="Email" Text="*" ForeColor="Red" />
                    </div>
                    <div>
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    </div>
                    <%--Password--%>
                    <div>
                        <asp:Label ID="PwordLbl" Text="Password: " runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RFVIniPword" runat="server" ControlToValidate="IniPword" Text="*" ForeColor="Red" />
                    </div> 
                    <div>
                        <asp:TextBox ID="IniPword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <%--Confirm Password--%>
                    <div>
                        <asp:Label ID="CPwordLbl" Text="Confirm Password: " runat="server"></asp:Label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <%--Compare Validator for Password--%>
                        <asp:CompareValidator runat="server" ID="PasswordCompareValidator" ControlToCompare="IniPword" ControlToValidate="Password" ErrorMessage="Passwords do not match" Type="String" Operator="Equal" Font-Size="Small" ForeColor="Red"/>
                    </div>
                    <%--Sign Up Button--%>
                    <asp:Button ID="signup_button" runat="server" Text="Sign Up" OnClick="submitBtn_Click"/>
                    <br />
                    <%--If user has an account already--%>
                    <asp:HyperLink ID="LinkToLogin" NavigateUrl="~/login.aspx" Text="Already have an account? Log In" runat="server" />
                </div>
                
                
            </div>
        </div>
    </form>
</body>
</html>
