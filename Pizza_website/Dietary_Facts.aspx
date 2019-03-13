<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dietary_Facts.aspx.cs" Inherits="Dietary_Facts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
        .style2
        {
        text-align: center;
        width: 411px;
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        font-weight: bold;
        color: #0000FF;
        background-color: #FFFF00;
    }
        .style3
        {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        font-weight: bold;
        color: #0000FF;
        background-color: #FFFF00;
    }
        .style4
        {
        text-align: center;
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        font-weight: bold;
        color: #0000FF;
        background-color: #FFFF00;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style1">
        Dietary Facts</h1>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    Pizza (1 slice)</td>
                <td class="style4">
                    Calories</td>
                <td class="style4">
                    Total Fat</td>
            </tr>
            <tr>
                <td class="style2">
                    Pepperoni</td>
                <td class="style3" style="text-align: center">
                    200</td>
                <td class="style3" style="text-align: center">
                    9</td>
            </tr>
            <tr>
                <td class="style2">
                    Cheese</td>
                <td class="style4">
                    190</td>
                <td class="style4">
                    8</td>
            </tr>
            <tr>
                <td class="style2">
                    Grinders (small)</td>
                <td class="style4">
                    Calories</td>
                <td class="style4">
                    Total Fat</td>
            </tr>
            <tr>
                <td class="style2">
                    Turkey Grinder</td>
                <td class="style4">
                    1000</td>
                <td class="style4">
                    24</td>
            </tr>
            <tr>
                <td class="style2">
                    Hot Pastrami</td>
                <td class="style4">
                    1300</td>
                <td class="style4">
                    34</td>
            </tr>
            <tr>
                <td class="style2">
                    Chicken Salad Sandwich</td>
                <td class="style4">
                    700</td>
                <td class="style4">
                    19</td>
            </tr>
            <tr>
                <td class="style2">
                    Famous Pizza Big Steak &amp; Cheese Sandwich</td>
                <td class="style4">
                    2000</td>
                <td class="style4">
                    51</td>
            </tr>
            <tr>
                <td class="style2">
                    Desserts</td>
                <td class="style4">
                    Calories</td>
                <td class="style4">
                    Total Fat</td>
            </tr>
            <tr>
                <td class="style2">
                    Death By Chocalate</td>
                <td class="style4">
                    500</td>
                <td class="style4">
                    25</td>
            </tr>
            <tr>
                <td class="style2">
                    Cannoli</td>
                <td class="style4">
                    150</td>
                <td class="style4">
                    21</td>
            </tr>
        </table>
    </p>
</asp:Content>

