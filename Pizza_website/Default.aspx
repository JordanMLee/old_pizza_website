<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Login to edit cart<asp:Button ID="Button9" runat="server" 
        onclick="Button9_Click" Text="Check Out" Height="70px" Width="250px" />
<asp:TextBox ID="TextBox1" runat="server" style="text-align: center" 
        TextMode="Password"></asp:TextBox>
</asp:Content>

