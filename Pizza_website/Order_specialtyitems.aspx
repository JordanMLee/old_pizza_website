<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_specialtyitems.aspx.cs" Inherits="Order_specialtyitems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 171px;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 436px;
            text-align: center;
        }
        .style5
        {
            width: 436px;
            text-align: center;
            height: 23px;
        }
        .style6
        {
            width: 171px;
            text-align: center;
            height: 23px;
        }
        .style7
        {
            text-align: center;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="style3">
    Specialty Items&nbsp;&nbsp; </h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style5">
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Fish &amp; Chips</asp:LinkButton>
                </td>
                <td class="style6">
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Fried Dough</asp:LinkButton>
                </td>
                <td class="style7">
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">The Boss Hog</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Served with french fries, lemon, cole slaw, and tartar sauce.
                </td>
                <td class="style2">
                    with Powered Sugar</td>
                <td dir="ltr" rowspan="1" style="text-align: center">
                    2 hot dogs rolled in pizza dough filled with Cheddar cheese &amp; then fried. Served 
                    with ketchup &amp; mustard</td>
            </tr>
            <tr>
                <td class="style4">
                    $9.99</td>
                <td class="style2">
                    $4.95</td>
                <td class="style3">
                    $5.99</td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem NavigateUrl="~/Order_grinders.aspx" Text="Grinders" 
                Value="Grinders"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_drinks.aspx" Text="Drinks" Value="Drinks">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_desserts.aspx" Text="Desserts" 
                Value="Desserts"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_appetizers.aspx" Text="Appetizers" 
                Value="Appetizers"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_gourmetpizzas.aspx" Text="Gourmet Pizzas" 
                Value="Gourmet Pizzas"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_saladsandsides.aspx" Text="Salads and Sides" 
                Value="Salads and Sides"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_calzones.aspx" Text="Calzones" 
                Value="Calzones"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_createyourownpizzas.aspx" 
                Text="Create Your Own Pizza" Value="Create Your Own Pizza"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Order_specialtyitems.aspx" Text="Specialty Items" 
                Value="Specialty Items"></asp:MenuItem>
        </Items>
    </asp:Menu>
    </p>
</asp:Content>

