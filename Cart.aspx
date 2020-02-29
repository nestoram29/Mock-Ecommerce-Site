<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebsiteTest.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <h4>Cart</h4>
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width: 50%">Product</th>
                            <th style="width: 10%">Price</th>
                            <th style="width: 8%">Quantity</th>
                            <th style="width: 22%" class="text-center">Subtotal</th>
                            <th style="width: 10%"></th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td data-th="Product">
                                        <a href="ProductDetails.aspx?id=<%#Eval("ProductID")%>">
                                            <div class="row">
                                                <div class="col-sm-2 hidden-xs">
                                                    <img src="/Images/products/<%#Eval("ProductID") %>s.jpg" alt="..." class="img-responsive" />
                                                </div>
                                                <div class="col-sm-10">
                                                    <h4 class="nomargin">
                                                        <%#Eval("ProductName") %></h4>
                                                    <p>
                                                        $<%#Eval("ShortDescription") %>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </td>
                                    <td data-th="Price">$<%#Eval("Price") %></td>
                                    <td data-th="Quantity">
                                        <input type="number" class="form-control text-center" value="<%#Eval("Quantity") %>" min="0">
                                    </td>
                                    <td data-th="Subtotal" class="text-center">$<%#Eval("SubTotal") %></td>
                                    <td class="actions" data-th="">
                                        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>

                    <tfoot>
                        <tr class="visible-xs">
                            <td class="text-center"><strong>Total
                                <!-- -->
                            </strong></td>
                        </tr>
                        <tr>
                            <td><a href="/Products1.aspx" class="btn btn-warning"><i class="fa fa-angle-left"></i>Continue Shopping</a></td>
                            <td colspan="2" class="hidden-xs"></td>
                            <td class="hidden-xs text-center"><strong>
                                <asp:Label ID="Total" runat="server" Text=""></asp:Label></strong></td>
                            <td>
                                <asp:Button ID="CheckoutBtn" runat="server" Text="Checkout" CssClass="btn btn-success btn-block" OnClick="CheckoutBtn_Click" />
                            </td>
                        </tr>
                    </tfoot>
                </table>

                <h4>Saved For Later</h4>
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width: 50%">Product</th>
                            <th style="width: 10%">Price</th>
                            <th style="width: 8%">Quantity</th>
                            <th style="width: 22%" class="text-center">Subtotal</th>
                            <th style="width: 10%"></th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:ListView ID="ListView2" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td data-th="Product">
                                        <a href="ProductDetails.aspx?id=<%#Eval("ProductID")%>">
                                            <div class="row">
                                                <div class="col-sm-2 hidden-xs">
                                                    <img src="/Images/products/<%#Eval("ProductID") %>s.jpg" alt="..." class="img-responsive" />
                                                </div>
                                                <div class="col-sm-10">
                                                    <h4 class="nomargin"><%#Eval("ProductName") %></h4>
                                                    <p>
                                                        $<%#Eval("ShortDescription") %>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </td>
                                    <td data-th="Price">$<%#Eval("Price") %></td>
                                    <td data-th="Quantity">
                                        <input type="number" class="form-control text-center" value="<%#Eval("Quantity") %>" min="0">
                                    </td>
                                    <td data-th="Subtotal" class="text-center">$<%#Eval("SubTotal") %></td>
                                    <td class="actions" data-th="">
                                        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
