<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kids_Korner.aspx.cs" Inherits="Kids_Korner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 945px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Kid&#39;s Korner<table style="width:100%;">
            <tr>
                <td class="style1">
                <img src="images/1996use.gif" alt="" 
            style="height: 243px; width: 585px; margin-top: 0px" />
                    &nbsp;</td>
                   
                <td> <img src="images/cumberland_display_image.jpg" alt="" 
            style="height: 243px; width: 585px; margin-top: 0px" />
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style1">

                    <table style="width:100%;">
                        <tr>
                            <td>
                                Kid&#39;s Menu</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server">Fried Cheese Calzone</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton3" runat="server">Fried Pepperoni</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                <img src="images/rhode-island.gif" alt="" 
            style="height: 243px; width: 585px; margin-top: 0px" />
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>

                    &nbsp;</td>
                
            </tr>
        </table>
    </p>
</asp:Content>

