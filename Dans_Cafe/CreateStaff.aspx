<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateStaff.aspx.cs" Inherits="Dans_Cafe.CreateStaff" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Staff Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        #form1 {

            max-width: 500px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        textarea {
            font-family: Arial, sans-serif;
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        textarea {
            height: 80px;
            resize: vertical;
        }

        .btn{
            background-color: #2E1308;
            color: white;
            border: none;
            cursor: pointer;
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            font-size: 16px;
            display:flex;
            justify-content:center;
            align-content:center;

        }

        .btn:hover, .btn:focus, .btn:active{
            background-color:  #4B3621;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            -webkit-transform: scale(1.02);
            transform:scale(1.02);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Create Staff Account</h2>
        <div>
            <label for="txtFirstName">First Name:</label>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

            <label for="txtLastName">Last Name:</label>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

            <label for="txtUsername">Username:</label>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

            <label for="txtEmail">Email:</label>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Invalid email format" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <label for="txtPassword">Password:</label>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Text="*" ForeColor="Red" TextMode="Password"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>

            <label for="txtConfirmPassword">Confirm Password:</label>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" Text="*" ForeColor="Red" TextMode="Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Text="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>

            <label for="txtPhoneNumber">Phone Number:</label>
            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>

            <label for="txtAddress">Address:</label>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>

            <asp:Button class="btn" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        </div>
    </form>
</body>
</html>
