<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style1">
        Order</p>
    <p class="style1">
         Current UserName is: <%=pinNumber%></p>
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
    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Button" />
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="AccessDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" 
                SortExpression="ItemID" />
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                SortExpression="ItemName" />
            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                SortExpression="ItemPrice" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Customerdb.accdb" 
        DeleteCommand="DELETE FROM [Items] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Items] ([ID], [ItemID], [ItemName], [ItemPrice]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Items] ORDER BY [ID]" 
        
        UpdateCommand="UPDATE [Items] SET [ItemID] = ?, [ItemName] = ?, [ItemPrice] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

