<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 423px;
        }
        #Text2
        {
            width: 226px;
        }
        #Text3
        {
            width: 215px;
        }
        #Text6
        {
            width: 64px;
        }
        #Text10
        {
            width: 237px;
        }
        #Text11
        {
            width: 276px;
        }
    .style2
    {
        width: 799px;
    }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {

        }

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Billing Information<br />
                Delivery Date:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>MasterCard</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>AmericanExpress</asp:ListItem>
                    <asp:ListItem>Discovery</asp:ListItem>
                </asp:RadioButtonList>
            </td>
             
        </tr>
        <tr>
            <td class="style2">
                Name: first:&nbsp;
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                &nbsp; last:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
            </td>
            <td>
                Credit Card Number:
                <asp:TextBox ID="CreditCardNumber" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="style2">
                Address1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Address1" 
                    runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                Name on Card:&nbsp;
                <asp:TextBox ID="NameOnCard" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="style2">
                &nbsp;Address 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                    ID="Address2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                Expiration mm/yyyy<asp:TextBox ID="ExpirationDate" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="style2">
                City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="City" 
                    runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; State:&nbsp;
                <asp:TextBox ID="State" runat="server"></asp:TextBox>
            </td>
            <td>
                CRC
                <asp:TextBox ID="CRC" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="style2">
                Zip Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
           
        </tr>
        <tr>
            <td class="style2">
                phone number:&nbsp;&nbsp;
                <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
&nbsp;(XXX) XXX-XXXX</td>
            <td>
                <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" 
                    Text="Reset" />
            </td>
           
        </tr>
        <tr>
            <td class="style2">
                email:&nbsp;&nbsp;
                &nbsp;<asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
&nbsp;xxxxx@xxxx.xxx</td>
            <td>
                &nbsp;</td>
           
        </tr>
        
    </table>
</asp:Content>

