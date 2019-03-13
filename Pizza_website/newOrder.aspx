<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newOrder.aspx.cs" Inherits="newOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
        height: 10px;
        background-color: #FFFF00;
    }
    .style4
    {
        font-size: x-large;
    }
    .style5
    {
        font-size: x-large;
        font-weight: bold;
    }
    .style6
    {
        height: 10px;
        font-size: medium;
        background-color: #FFFF00;
            width: 414px;
        }
    .style7
    {
        background-color: #FFFF00;
    }
    .style8
    {
            font-size: x-large;
            background-color: #FFFF00;
            width: 414px;
        }
    .style9
    {
        font-size: x-large;
        font-weight: bold;
        background-color: #FFFF00;
    }
        .style10
        {
            font-size: x-large;
            font-weight: bold;
            background-color: #FFFF00;
            width: 414px;
        }
        .style11
        {
            background-color: #6666FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p> Current Customer Number is: <%=pinNumber%></p>
    <table style="width:100%;">
        <tr>
            <td class="style10">
                Pizzas</td>
            <td class="style9">
                Calzones</td>
            <td class="style9">
                Drinks</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:LinkButton ID="CheesePizza" runat="server" CssClass="style5" 
                    onclick="CheesePizza_Click">Cheese Pizza</asp:LinkButton>
                &nbsp;<b><br class="style4" />
                <span class="style4">Small: $</span><asp:Label ID="CPsmallPrice" runat="server" 
                    Text="9.00" CssClass="style4"></asp:Label>
                <span class="style4">&nbsp;Large: $</span><asp:Label ID="CPlargePrice" 
                    runat="server" Text="17.00" CssClass="style4"></asp:Label>
                </b>
                <asp:RadioButtonList ID="CheesePizzaList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style3">
                <b>
                <asp:LinkButton ID="CheeseCalzone" runat="server" CssClass="style4" 
                    onclick="CheeseCalzone_Click">Cheese Calzone</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="CCSmallPrice" runat="server" Text="5.00" 
                    CssClass="style4"></asp:Label>
                &nbsp;Large: $<asp:Label ID="CCLargePrice" runat="server" Text="10.00" 
                    CssClass="style4"></asp:Label>
                </b>
                <asp:RadioButtonList ID="CheeseCalzoneList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style3">
                <b>
                <asp:LinkButton ID="Coke" runat="server" CssClass="style4" onclick="Coke_Click">Coke</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="CokeSmallPrice" runat="server" Text="1.00" 
                    CssClass="style4"></asp:Label>
                &nbsp;Large: $<asp:Label ID="CokeLargePrice" runat="server" Text="2.00" 
                    CssClass="style4"></asp:Label>
                </b>
                <asp:RadioButtonList ID="CokeList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <b>
                <asp:LinkButton ID="PepperoniPizza" runat="server" CssClass="style4" 
                    onclick="PepperoniPizza_Click">Pepperoni Pizza</asp:LinkButton>
                <br class="style4" />
                <span class="style4">Small: $</span><asp:Label ID="PPSmallPrice" runat="server" 
                    Text="8.50" CssClass="style4"></asp:Label>
                <span class="style4">&nbsp;Large: $</span><asp:Label ID="PPLargePrice" 
                    runat="server" CssClass="style4" Text="17.50"></asp:Label>
                </b>
                <asp:RadioButtonList ID="PepperoniPizzaList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
                <b>
                <asp:LinkButton ID="PepperoniCalzone" runat="server" CssClass="style4" 
                    onclick="PepperoniCalzone_Click">Pepperoni Calzone</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="PCSmallPrice" runat="server" Text="6.00" 
                    CssClass="style4"></asp:Label>
                &nbsp;Large: $</b><asp:Label ID="PCLargePrice" runat="server" Text="11.00"></asp:Label>
                <asp:RadioButtonList ID="PepperoniCalzoneList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
                <b>
                <asp:LinkButton ID="Fanta" runat="server" CssClass="style4" 
                    onclick="Fanta_Click">Fanta</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="FantaSmallPrice" runat="server" Text="1.00" 
                    CssClass="style4"></asp:Label>
                &nbsp;Large: $</b><asp:Label ID="FantaLargePrice" runat="server" Text="2.00"></asp:Label>
                <asp:RadioButtonList ID="FantaList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <b>
                <asp:LinkButton ID="MeatLoversPizza" runat="server" CssClass="style4" 
                    onclick="MeatLoversPizza_Click">Meat Lovers Pizza</asp:LinkButton>
                <br class="style4" />
                <span class="style4">Small:&nbsp; $</span><asp:Label ID="MLSmallPrice" 
                    runat="server" Text="9.00" CssClass="style4"></asp:Label>
                <span class="style4">&nbsp;Large: $</span><asp:Label ID="MLLargePrice" 
                    runat="server" Text="17.00" CssClass="style4"></asp:Label>
                </b>
                <asp:RadioButtonList ID="MeatLoversList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
                <b>
                <asp:LinkButton ID="SausageCalzone" runat="server" CssClass="style4" 
                    onclick="SausageCalzone_Click">Sausage Calzone</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="SCSmallPrice" runat="server" Text="6.00" 
                    CssClass="style4"></asp:Label>
                &nbsp;Large: $<asp:Label ID="SCLargePrice" runat="server" Text="11.00"></asp:Label>
                </b>
                <asp:RadioButtonList ID="SausageCalzoneList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
                <b>
                <asp:LinkButton ID="CranberryJuice" runat="server" CssClass="style4" 
                    onclick="CranberryJuice_Click">Cranberry Juice</asp:LinkButton>
                <br />
                Small :$<asp:Label ID="CJSmallPrice" runat="server" Text="1.00" 
                    CssClass="style4"></asp:Label>
                Large: $</b><asp:Label ID="CJLargePrice" runat="server" Text="2.00"></asp:Label>
                <asp:RadioButtonList ID="CJList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <b>
                <asp:LinkButton ID="VeggieLovers" runat="server" CssClass="style4" 
                    onclick="VeggieLovers_Click">Veggie Lovers Pizza</asp:LinkButton>
                <br class="style4" />
                <span class="style4">Small: $</span><asp:Label ID="VLSmallPrice" runat="server" 
                    Text="8.00" CssClass="style4"></asp:Label>
                <span class="style4">&nbsp;Large: $</span><asp:Label ID="VLLargePrice" 
                    runat="server" CssClass="style4" Text="16.00"></asp:Label>
                </b>
                <asp:RadioButtonList ID="VeggieLoversList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
                <b>
                <asp:LinkButton ID="VeggieCalzone" runat="server" CssClass="style4" 
                    onclick="VeggieCalzone_Click">Veggie Calzone</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="VCSmallPrice" runat="server" Text="4.00" 
                    CssClass="style4"></asp:Label>
                &nbsp;Large: $</b><asp:Label ID="VCLargePrice" runat="server" Text="8.00"></asp:Label>
                <asp:RadioButtonList ID="VeggieCalzoneList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style7">
                <b>
                <asp:LinkButton ID="Sprite" runat="server" CssClass="style4" 
                    onclick="Sprite_Click">Sprite</asp:LinkButton>
                <br />
                Small: $<asp:Label ID="SpriteSmallPrice" runat="server" Text="1.00" 
                    CssClass="style4"></asp:Label>
                &nbsp; Large: $</b><asp:Label ID="SpriteLargePrice" runat="server" Text="2.00"></asp:Label>
                <asp:RadioButtonList ID="SpriteList" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    
    </table>
    <span class="style11">Cart:&nbsp;
    </span>
    <asp:Label ID="Label15" runat="server" Text="Label" CssClass="style11"></asp:Label>
    <asp:Button ID="Button10" runat="server" 
        Text="Check Out" onclick="Button10_Click" />
    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
    <br class="style11" />
    <br class="style11" />
    <asp:TextBox ID="AdminTextbox" runat="server" CssClass="style11" 
        TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button9" runat="server" CssClass="style11" Text="Submit" 
        onclick="Button9_Click" />
    <br class="style11" />
    <span class="style11">Status:
    </span>
    <asp:Label ID="Label14" runat="server" Text="Error" CssClass="style11"></asp:Label>
    <br class="style11" />
    <br class="style11" />
    <br class="style11" />
    <br class="style11" />
    <br class="style11" />
    </asp:Content>

