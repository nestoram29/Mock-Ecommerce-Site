<%@ Page Title="Payment Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebsiteTest.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <h4>Payment Information</h4>
        <hr />
        <div class="form-group">
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CreditCardNumber" CssClass="col-md-2 control-label">Credit Card Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CreditCardNumber" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CreditCardNumber"
                    CssClass="text-danger" ErrorMessage="The credit card field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CCType" CssClass="col-md-2 control-label">Card Type</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="CCType" runat="server" CssClass="dropdown">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>MasterCard</asp:ListItem>
                    <asp:ListItem>Discover</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ExpDate" CssClass="col-md-2 control-label">Experiation Month</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ExpDate" runat="server" CssClass="dropdown">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ExpYear" CssClass="col-md-2 control-label">Experiation Year</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ExpYear" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ExpYear"
                    CssClass="text-danger" ErrorMessage="The year field is required." />
                <asp:RegularExpressionValidator runat="server" CssClass="text-danger" Display="Dynamic"
                    ErrorMessage="Format is invalid." ControlToValidate="ExpYear"
                    ValidationExpression="^\d{4}$" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CVV" CssClass="col-md-2 control-label">CVV</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CVV" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CVV"
                    CssClass="text-danger" ErrorMessage="The cvv field is required." />
                <asp:RegularExpressionValidator runat="server" CssClass="text-danger" Display="Dynamic"
                    ErrorMessage="Format is invalid." ControlToValidate="CVV"
                    ValidationExpression="^\d{4}$" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CardName" CssClass="col-md-2 control-label">Name on card</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CardName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CardName"
                    CssClass="text-danger" ErrorMessage="The card name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Address" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="City"
                    CssClass="text-danger" ErrorMessage="The city field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="State" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="State" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="State"
                    CssClass="text-danger" ErrorMessage="The state field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ZipCode" CssClass="col-md-2 control-label">Zip Code</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ZipCode" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ZipCode"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The zip code field is required." />
                <asp:RegularExpressionValidator runat="server" CssClass="text-danger" Display="Dynamic"
                    ErrorMessage="Format is invalid. (U.S. format required)" ControlToValidate="ZipCode"
                    ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" />
            </div>
        </div>
    </div>
    <br />
    <div class="form-horizontal">
        <h4>Shipping Information</h4>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="The last name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="City"
                    CssClass="text-danger" ErrorMessage="The city field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="State" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DropDownList3" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="State"
                    CssClass="text-danger" ErrorMessage="The state field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ZipCode" CssClass="col-md-2 control-label">Zip Code</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox9" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ZipCode"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The zip code field is required." />
                <asp:RegularExpressionValidator runat="server" CssClass="text-danger" Display="Dynamic"
                    ErrorMessage="Format is invalid. (U.S. format required)" ControlToValidate="ZipCode"
                    ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The email field is required." />
            </div>
        </div>
    </div>

    <asp:Button ID="ContinueBtn" runat="server" Text="Continue" OnClick="ContinueBtn_Click" />
</asp:Content>
