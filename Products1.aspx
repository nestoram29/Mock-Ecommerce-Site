<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products1.aspx.cs" Inherits="WebsiteTest.Products1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Graphics Cards</p>
                <div class="list-group">
                    <a href="Products2.aspx" class="list-group-item">Monitors</a>
                    <a href="Products3.aspx" class="list-group-item">RAM</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="Images/carouselpics/gpus/1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Images/carouselpics/gpus/2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Images/carouselpics/gpus/3.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">
                    
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-4 col-lg-4 col-md-4">
                                <div class="thumbnail">
                                    <img src="/Images/gpu/<%#Eval("Image") %>" alt="">
                                    <div class="caption">
                                        <h4>
                                            <a href="ProductDetails.aspx?id=<%#Eval("ID")%>">
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>' />
                                            </a>
                                        </h4>
                                        <p><%#Eval("ShortDescription") %></p>
                                    </div>
                                    <h4 class="pull-right">$<%#Eval("Price") %></h4>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->
</asp:Content>
