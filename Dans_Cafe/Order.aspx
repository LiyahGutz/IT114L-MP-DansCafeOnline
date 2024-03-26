<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Dans_Cafe.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
</head>
<body>
    <style>
        .prodPic {
            height: 100px;
            width: 100px;
        }
    </style>
    <form id="form1" runat="server">
        <h3>Hello, <%=Session["username"] %></h3>
        <div>
            <asp:Repeater ID="ProdItemRepeater" runat="server">
                <ItemTemplate>
                    <img class="prodPic" src="Pictures/products/<%# Eval("ID") %>.png">
                    <p><%# Eval("Name") %></p>
                    <p><%# Eval("Description") %></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
