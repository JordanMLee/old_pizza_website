<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_saladsandsides.aspx.cs" Inherits="Order_saladsandsides" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 524px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Salad and Sides</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="CaesarSalad" runat="server" onclick="CaesarSalad_Click">Casesar Salad</asp:LinkButton>
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="$5.99"></asp:Label>
                    <asp:CheckBoxList ID="Extras" runat="server">
                        <asp:ListItem Value="addshrimp">add shrimp $2.00</asp:ListItem>
                        <asp:ListItem Value="addchicken">add chicken $2.00</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>
                    <asp:LinkButton ID="GardenVegetable" runat="server">Garden Vegetable Salad</asp:LinkButton>
&nbsp; $6.99<asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        <asp:ListItem Value="tuna">add scoop of tuna $1.99</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                </td>
               
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="marinara" runat="server">Cup of Marinara</asp:LinkButton>
&nbsp;$2.99</td>
                <td>
                    Antipasto<br />
                    <asp:LinkButton ID="GenoaSalami" runat="server">Genoa Salami</asp:LinkButton>
&nbsp;$4.99<br />
                    <asp:LinkButton ID="LinkButton3" runat="server">Ham</asp:LinkButton>
&nbsp;$3.99</td>
               
            </tr>
           
        </table>
    </p>
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
    &nbsp;</p>
</asp:Content>

