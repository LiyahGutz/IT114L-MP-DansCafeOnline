<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Dans_Cafe.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Include jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Include Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <style>
        .prodPic {
            height: 200px;
            width: 200px;
            cursor: pointer; /* Add cursor pointer to indicate clickable */
        }
        .modalPic {
            height: 400px;
            width: 400px;
        }
        .btn {
            background-color: #782b14;
            border-color: #782b14;
        }
        .btn:hover {
            background-color: #311108;
        }
    </style>

    <form id="form1" runat="server">
        <h3>Hello, <%=Session["username"] %></h3>
        <div class="container">
            <div class="row">
                <asp:Repeater ID="ProdItemRepeater" runat="server" OnItemCommand="ProdItemRepeater_ItemCommand">
                    <ItemTemplate>
                        <div class="col-md-3 mb-3">
                            <div class="img">
                                <img class="prodPic" src="Pictures/products/<%# Eval("ID") %>.png" />
                                <p><%# Eval("Name") %></p>
                                
                                <!-- Button to trigger modal -->
                                <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#<%# "myModal_" + Container.ItemIndex %>">
                                    View Product
                                </button>
                            </div>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id='<%# "myModal_" + Container.ItemIndex %>' tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel"><%# Eval("Name") %></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body" aria-checked="mixed">
                                        <!-- Modal Body Content -->
                                        <!-- You can add any additional details or controls here -->
                                        <img class="modalPic" src="Pictures/products/<%# Eval("ID") %>.png" />
                                        <p><%# Eval("Description") %></p>
                                        <p>Price: P<asp:Label ID="PriceLbl" runat="server" Text='<%# Eval("Price") %>'></asp:Label></p>


                                        <asp:Label ID="Qty" runat="server">Quantity: </asp:Label>
                                        <asp:TextBox ID="ProductQuantity" TextMode="Number" runat="server" value="1"></asp:TextBox><br />
                                        <asp:RangeValidator ID="RVQuantity" runat="server" ControlToValidate="ProductQuantity" MinimumValue="1" MaximumValue="100" />
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button runat="server" ID="PushCart" class="btn btn-secondary" Text="Add to Cart" data-dismiss="modal" CommandName="PushCart" CommandArgument='<%# Eval("ID") %>' />
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <!-- Additional buttons or actions can be added here if needed -->
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>

    
</body>
</html>
