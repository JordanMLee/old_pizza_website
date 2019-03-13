<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuickPurchase.aspx.cs" Inherits="QuickPurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #Text1
    {
        width: 50px;
    }
</style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Text1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:TextBox ID="TextBox1" runat="server" MaxLength="1" Width="48px"></asp:TextBox>
&nbsp; Pepperonit Pizzas&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button9" 
        runat="server" onclick="Button9_Click" Text="BUY" />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;
    <asp:Button ID="cmBtn" runat="server" onclick="Button10_Click" 
        PostBackUrl="~/Confirmation.aspx" Text="Confirm" />
    <asp:Button ID="Button10" runat="server" onclick="Button10_Click1" 
        PostBackUrl="~/QuickPurchase.aspx" Text="Reset" />
&nbsp;
</asp:Content>

