<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_createyourownpizzas.aspx.cs" Inherits="Order_createyourownpizzas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Create Your Own Pizzas</p>
    <p>
        All of our pizzas are made with our famous dough covered with our signatures 
        sauces and cheeses.</p>
<p>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Toppings</td>
            <td class="style2">
                Toppings</td>
            <td class="style2">
                Gourmet Toppings</td>
                 <td>
                     Gourmet Toppings</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Fresh Basil</asp:ListItem>
                    <asp:ListItem>Jalapenos</asp:ListItem>
                    <asp:ListItem>Banana Peppers</asp:ListItem>
                    <asp:ListItem>Pineapples</asp:ListItem>
                    <asp:ListItem>Bacon</asp:ListItem>
                    <asp:ListItem>Ground Beef</asp:ListItem>
                    <asp:ListItem>Chili Peppers</asp:ListItem>
                    <asp:ListItem>Roasted Red Peppers</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem>Sausage</asp:ListItem>
                    <asp:ListItem>Ham</asp:ListItem>
                    <asp:ListItem>Meatball</asp:ListItem>
                    <asp:ListItem>Black Olives</asp:ListItem>
                    <asp:ListItem>Onions</asp:ListItem>
                    <asp:ListItem>Garlic</asp:ListItem>
                    <asp:ListItem>Feta Cheese</asp:ListItem>
                    <asp:ListItem>Pepperoni</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                    <asp:ListItem>Artichokes</asp:ListItem>
                    <asp:ListItem>Shaved Steak</asp:ListItem>
                    <asp:ListItem>Lobster</asp:ListItem>
                    <asp:ListItem>Scallops</asp:ListItem>
                    <asp:ListItem>Crab</asp:ListItem>
                    <asp:ListItem>Clams</asp:ListItem>
                    <asp:ListItem>Shrimp</asp:ListItem>
                    <asp:ListItem>Squid</asp:ListItem>
                    <asp:ListItem>Octopus</asp:ListItem>
                </asp:CheckBoxList>
            </td>
                 <td>
                     <asp:CheckBoxList ID="CheckBoxList4" runat="server">
                         <asp:ListItem>Anchovies</asp:ListItem>
                         <asp:ListItem>Brocolli</asp:ListItem>
                         <asp:ListItem>Spinach</asp:ListItem>
                         <asp:ListItem>Wild Mushroom</asp:ListItem>
                         <asp:ListItem>Prosciutto</asp:ListItem>
                         <asp:ListItem>Eggplant</asp:ListItem>
                         <asp:ListItem>Diced Eggs</asp:ListItem>
                         <asp:ListItem>Salami</asp:ListItem>
                         <asp:ListItem>Chicken</asp:ListItem>
                     </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button9" runat="server" Text="Button" />
                <asp:Button ID="Button10" runat="server" Text="Button" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
                 <td>
                &nbsp;</td>
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
    </p>
</asp:Content>

