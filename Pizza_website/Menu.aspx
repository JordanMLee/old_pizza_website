<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Menu</p>
    <p>
    <img src="images/capture.jpg" alt="" 
            
            style="height: 731px; width: 956px; margin-top: 0px; text-align: center; margin-left: 220px; margin-right: 0px;" />
            <img src="images/capture2.jpg" alt="" 
            
            style="height: 980px; width: 960px; margin-top: 0px; text-align: center; margin-left: 220px;" />

        
    <asp:Button ID="PDF_button" runat="server" onclick="PDF_button_Click" 
        Text="View in PDF" />
</asp:Content>

