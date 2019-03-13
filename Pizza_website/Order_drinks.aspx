<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_drinks.aspx.cs" Inherits="Order_drinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        width: 143px;
        text-align: center;
    }
        .style5
    {
        width: 107px;
        text-align: center;
    }
    .style6
    {
        text-align: center;
    }
    .style7
    {
        width: 194px;
        text-align: center;
    }
    .style8
    {
        width: 100px;
        text-align: center;
    }
    .style9
    {
        width: 130px;
        text-align: center;
    }
        .style10
        {
            width: 194px;
            text-align: center;
            height: 23px;
        }
        .style11
        {
            width: 100px;
            text-align: center;
            height: 23px;
        }
        .style12
        {
            width: 107px;
            text-align: center;
            height: 23px;
        }
        .style13
        {
            width: 130px;
            text-align: center;
            height: 23px;
        }
        .style14
        {
            width: 143px;
            text-align: center;
            height: 23px;
        }
        .style15
        {
            text-align: center;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style10">
                    Soda</td>
                    <td class="style11">
                        </td>
                <td class="style12">
                    Beer&nbsp; $3.99</td>
                    <td class="style13">
                        Wines</td>
                <td class="style14">
                    </td>
                    <td class="style15">
                        Other $2.99</td>
                    
            </tr>
            <tr>
                <td class="style7">
                    <asp:LinkButton ID="Pepsi" runat="server" onclick="Pepsi_Click">Pepsi</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="Coke" runat="server" onclick="Coke_Click">Coke</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="Sprite" runat="server" onclick="Sprite_Click">Sprite</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="fanta" runat="server" onclick="fanta_Click">Fanta</asp:LinkButton>
                </td>
                <td class="style8">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True" Value="2">20oz $1.99</asp:ListItem>
                        <asp:ListItem Value="3">2-Liter $2.99</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                    <td class="style5">
                    <asp:LinkButton ID="SamuelAdams0" runat="server" onclick="SamuelAdams0_Click">Samuel Adams</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="Guinness0" runat="server" onclick="Guinness0_Click">Guinness</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="Bud0" runat="server" onclick="Bud0_Click">Bud</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="CoronaLight0" runat="server" onclick="CoronaLight0_Click">Corona Light</asp:LinkButton>
                </td>
                  

                    <td class="style9">
                    <asp:LinkButton ID="Pinot0" runat="server" onclick="Pinot0_Click">Pinot</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="grigio0" runat="server" onclick="grigio0_Click">Grigio</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="Merlet0" runat="server">Merlet</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="Chardonnay0" runat="server" onclick="Chardonnay0_Click">Chardonnay</asp:LinkButton>
                </td>
                <td class="style2">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Selected="True" Value="2">Glass $1.99</asp:ListItem>
                        <asp:ListItem Value="10">Bottle $10.00</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                
                    <td class="style6">
                        <asp:LinkButton ID="Milk" runat="server" onclick="Milk_Click">Milk</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="Coffee" runat="server" onclick="Coffee_Click">Coffee</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="VitaminWater" runat="server" onclick="VitaminWater_Click">Vitamin Water</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="AppleJuice" runat="server" onclick="AppleJuice_Click">AppleJuice</asp:LinkButton>
                </td>
            </tr>
           
        </table>
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

