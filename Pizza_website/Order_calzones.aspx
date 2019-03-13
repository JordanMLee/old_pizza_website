<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_calzones.aspx.cs" Inherits="Order_calzones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 444px;
        }
        .style2
    {
        width: 496px;
        background-color: #CC3300;
    }
    .style3
    {
        width: 1169px;
        height: 23px;
    }
    .style4
    {
        width: 496px;
        height: 23px;
    }
    .style5
    {
        height: 23px;
    }
    .style6
    {
        background-color: #CC3300;
    }
    .style7
    {
        width: 1169px;
        background-color: #CC3300;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Calzones</p>
    <p>
        &nbsp;<asp:Menu ID="Menu1" runat="server">
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
    <table style="width:100%;">
        <tr>
            <td class="style3">
                Calzones</td>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:LinkButton ID="friedCheeseC" runat="server" onclick="LinkButton1_Click">Pete&#39;s Fried Cheese Calzone</asp:LinkButton>
            &nbsp;$6.99</td>
            <td class="style2">
                <asp:LinkButton ID="meatballCalzone" runat="server" 
                    onclick="meatballCalzone_Click">Meatball Calzone</asp:LinkButton>
            &nbsp;$7.99</td>
            <td class="style6">
                <asp:LinkButton ID="PepperoniC" runat="server" onclick="PepperoniC_Click">Pepperoni Calzone</asp:LinkButton>
            &nbsp;$7.99</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:LinkButton ID="friedBChickenC" runat="server" 
                    onclick="friedBChickenC_Click">Pete&#39;s Fried Buffalo Chicken Calzone</asp:LinkButton>
            &nbsp; $ 7.99</td>
            <td class="style2">
                <asp:LinkButton ID="SausageCalzone" runat="server" 
                    onclick="SausageCalzone_Click">Pete&#39;s Sausage Calzone</asp:LinkButton>
            &nbsp; $6.99</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
    </p>
<p>
    &nbsp;</p>
</asp:Content>

