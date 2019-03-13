<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_desserts.aspx.cs" Inherits="Order_desserts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 468px;
        height: 226px;
    }
    .style3
    {
        width: 843px;
        text-align: right;
        background-color: #993300;
    }
    .style4
    {
        width: 440px;
        height: 348px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    <div style="height: 296px">
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    $1.99&nbsp;
                    <asp:LinkButton ID="Canoli" runat="server" onclick="Canoli_Click" 
                        style="font-weight: 700; font-size: xx-large">Canoli</asp:LinkButton>
                </td>
                <td>
                    <img alt="" class="style2" src="images/cannoli_3.jpg" /></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <img alt="" class="style4" 
                        src="images/051103076-01-devils-food-cake-recipe_xlg.jpg" /></td>
                <td style="background-color: #993300">
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        style="font-size: xx-large; font-weight: 700">Chocolate Cake</asp:LinkButton>
                &nbsp;$3.99</td>
            </tr>
        </table>
    </div>
</asp:Content>

