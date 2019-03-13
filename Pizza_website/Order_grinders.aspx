<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_grinders.aspx.cs" Inherits="Order_grinders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 218px;
        }
        .style2
        {
            width: 218px;
            height: 4px;
        }
        .style3
        {
            height: 4px;
            width: 154px;
        }
        .style6
        {
            width: 223px;
        }
        .style7
        {
            height: 4px;
            width: 223px;
        }
        .style8
        {
            width: 154px;
        }
        .style9
        {
            width: 175px;
        }
        .style10
        {
            height: 4px;
            width: 175px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Radio2_onclick() {

        }

        function Radio11_onclick() {

        }

        function Radio16_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <p>
        Grinders</p>
    <p>
        <table style="width:100%; height: 81px;">
            <tr>
                <td class="style1">
                    Chicken Parmesan Sandwich</td>
                <td class="style9">
                    Turkey Grinder</td>
                <td class="style8">
                    Hot Pastrami</td>
                    <td class="style6">
                    Italian Combo Sandwich</td>
            </tr>
            <tr>
                <td class="style2">
                    <input id="Radio2" type="radio" onclick="return Radio2_onclick()"/>Small</td>
                <td class="style10">
                    <input id="Radio4" type="radio" />Small</td>
                <td class="style3">
                    <input id="Radio5" type="radio" />Small</td>
                    <td class="style7">
                    <input id="Radio6" type="radio" />Small</td>
            </tr>
            <tr>
                <td class="style1">
                    <input id="Radio11" type="radio" onclick="return Radio11_onclick()" />Large</td>
                <td class="style9">
                    <input id="Radio8" type="radio" />Large</td>
                <td class="style8">
                    <input id="Radio9" type="radio" />Large</td>
                    <td class="style6">
                    <input id="Radio10" type="radio" />Large</td>
            </tr>
            <tr>
                <td class="style1">
                    Ham and Swiss Cheese Sandwich</td>
                <td class="style9">
                    Chicken Salad Sandwich</td>
                <td class="style8">
                    Tuna Salad Sandwich</td>
                    <td class="style6">
                        Buffalo Chicken Sandwich</td>
            </tr>
            <tr>
                <td class="style1">
                    <input id="Radio12" type="radio" />Small</td>
                <td class="style9">
                    <input id="Radio13" type="radio" />Small</td>
                <td class="style8">
                    <input id="Radio14" type="radio" />Small</td>
                    <td class="style6">
                    <input id="Radio15" type="radio" />Small</td>
            </tr>
            <tr>
                <td class="style1">
                    <input id="Radio16" type="radio" onclick="return Radio16_onclick()" />Large</td>
                <td class="style9">
                    <input id="Radio17" type="radio" />Large</td>
                <td class="style8">
                    <input id="Radio18" type="radio" />Large</td>
                    <td class="style6">
                    <input id="Radio19" type="radio" />Large</td>
            </tr>
        </table>
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </asp:Content>

