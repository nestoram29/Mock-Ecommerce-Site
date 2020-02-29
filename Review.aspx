<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="WebsiteTest.Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        <asp:Label ID="Info" runat="server" Text="Please review the following information"></asp:Label>
    </h3>
    <p>
        <asp:Label ID="infoLbl" runat="server" Text=""></asp:Label>
    </p>
    <asp:Button ID="ConfirmBtn" runat="server" Text="Confirm" OnClick="ConfirmBtn_Click" />
</asp:Content>
