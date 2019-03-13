<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ingredients.aspx.cs" Inherits="Ingredients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 320px;
        }
        .style2
        {
            width: 395px;
        }
        .style3
        {
            width: 181px;
        }
        .style4
        {
            font-size: medium;
        }
        .style5
        {
            width: 320px;
            font-size: xx-large;
            font-family: Arial, Helvetica, sans-serif;
            color: #00FF00;
            background-color: #000000;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style4">
        Ingredients</p>
    <p class="style4">
        <strong>Our ingredients include locally grown produce and herbs, blended with our secret 
        sauce recipe and secret dough recipe.</strong></p>
    <p>
        <table style="width:100%; margin-left: 100px">
            <tr>
                <td class="style1">
                <img src="images/ingredients.jpg" alt="" 
            style="height: 150px; width: 300px; margin-top: 0px" />
                    &nbsp;</td>
                <td class="style5">
                    Whole grain wheat</td>
                <td class="style">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Parmesan Cheese from Italy</td>
                <td class="style2">
                <img src="images/cheese.jpg" alt="" 
            style="height: 184px; width: 378px; margin-top: 0px" />
                    &nbsp;</td>
                <td class="style5">
                    Eggs and butter</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                    Finest herbs and spices</td>
                <td class="style3">
                <img src="images/potato.jpg" alt="" 
            style="height: 264px; width: 413px; margin-top: 0px" />
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

