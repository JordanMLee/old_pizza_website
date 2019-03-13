<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_gourmetpizzas.aspx.cs" Inherits="Order_gourmetpizzas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    .style2
    {
        text-align: center;
        width: 1169px;
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1 style="text-align: center">
            Gourmet Pizzas</h1>
    </div>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style1">
                Red Pizzas</td>
            <td class="style1">
                White Pizzas</td>
            
        </tr>
        <tr>
            <td class="style1">
                <input id="Radio1" type="radio" />Large
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">The Westerly (Specialty Red Pizza)</asp:LinkButton>
            </td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                    <asp:ListItem>Slice</asp:ListItem>
                </asp:RadioButtonList>
            </td>
          
        </tr>
        <tr>
            <td class="style2">
                <input id="Radio2" type="radio" />Medium
                <input id="Radio3" type="radio" />Slice<input id="Checkbox1" type="checkbox" />Gluten 
                free<asp:RadioButton ID="RadioButton1" runat="server" />
            </td>
            <td class="style2">
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">The Cape Codder</asp:LinkButton>
            </td>
            
        </tr>
    </table>
    <br />
    <br />
    <br />
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
    </asp:Content>

