<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            background-color: #00FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
    Confirmation:</h1>
<p style="text-align: left">
    <span class="style2">Thank you for ordering from Pete&#39;s Famous Pizzeria: It takes about 15 minutes to 
    cook 1 Pizza.&nbsp; We currently have a 6-pizza oven.&nbsp; Your order should be 
    delived by
    </span>
    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="style2"></asp:Label>
</p>
<p style="text-align: left">
    <span class="style2">(time calculation based on current computer time plus 45 minutes for delivery)</span><asp:Label 
        ID="Label3" runat="server" Text="Label" CssClass="style2"></asp:Label>
    </p>
<h3 style="text-align: left" class="style2">
    An email has been sent to your email address, it has the receipt for this order 
    and your order number.&nbsp; If you have made an error in your order, please 
    don&#39;t hesistate to call us. We can make changes.</h3>
</asp:Content>

