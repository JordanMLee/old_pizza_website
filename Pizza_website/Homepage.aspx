<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
            font-weight: bold;
            color: #0000FF;
            background-color: #FFFF00;
        }
        .style4
        {
            font-size: x-large;
            color: #0000FF;
            background-color: #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style3">
        Homepage</p>
    <h1 class="style4">
        &quot;Westerly Best Pizza Ever&quot;</h1>
<p class="style3">
        We&#39;d love to hear feedback from you.</p>
<p>
        <asp:TextBox ID="TextBox1" runat="server" Height="112px" 
            ontextchanged="TextBox1_TextChanged" Width="502px" CssClass="style3" 
            MaxLength="255" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button9" runat="server" Text="Submit" CssClass="style3" 
            onclick="Button9_Click" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Label"></asp:Label>
    </p>
</asp:Content>

