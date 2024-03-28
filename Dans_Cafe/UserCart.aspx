<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCart.aspx.cs" Inherits="Dans_Cafe.UserCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="CartItemRepeater" runat="server">
                <ItemTemplate>
                    <img class="prodPic" src="Pictures/products/<%# Eval("prodID") %>.png" />
                    <p><%# Eval("prodName") %></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
