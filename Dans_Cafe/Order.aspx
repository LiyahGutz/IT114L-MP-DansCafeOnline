<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Dans_Cafe.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Hello, <%=Session["UserName"] %></h3>
        <div>
            <asp:Repeater ID="ProdItemRepeater" runat="server"></asp:Repeater>
        </div>
    </form>
</body>
</html>
