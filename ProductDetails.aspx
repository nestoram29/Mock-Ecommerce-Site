<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebsiteTest.ProductDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-9">
                <h2><asp:Label ID="CategoryLbl" runat="server" Text=""></asp:Label></h2>
                <div class="thumbnail">
                    <asp:Image ID="ProdImg" runat="server" CssClass="img-responsive" />
                    <div class="caption-full">
                        <h4><asp:Label ID="PriceLbl" runat="server" Text="" CssClass="pull-right" /></h4>
                        <h4><asp:Label ID="ProdName" runat="server" Text=""></asp:Label></h4>
                        
                        <asp:Panel ID="Panel1" runat="server">
                            <div style="padding: 15px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    <asp:Label ID="ShortDescLbl" runat="server" Text=""></asp:Label>
                                </div>
                                <div style="float: right;">
                                    <asp:Label ID="ShowLbl" runat="server" Text="Show Full Description"></asp:Label>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">
                            <div style="padding: 15px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    <asp:Label ID="LongDescLbl" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </asp:Panel>
                        
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server"
                            TargetControlID="Panel2" CollapseControlID="Panel1" ExpandControlID="Panel1"
                            Collapsed="true"
                            CollapsedText="Show Full Description"
                            ExpandedText="Hide"
                            TextLabelId="ShowLbl" />
                    </div>

                    <asp:Button ID="AddToCartBtn" runat="server" Text="Add To Cart" CssClass="pull-right" OnClick="AddToCartBtn_Click" />
                </div>
                
            </div>

        </div>

    </div>
    <!-- /.container -->
</asp:Content>