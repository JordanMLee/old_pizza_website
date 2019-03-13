<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        onrowediting="GridView1_RowEditing" onrowupdated="GridView1_RowUpdated" 
        onrowupdating="GridView1_RowUpdating" style="text-align: center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                SortExpression="ItemName" />
            <asp:BoundField DataField="ItemSize" HeaderText="ItemSize" 
                SortExpression="ItemSize" />
            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                SortExpression="ItemPrice" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Customerdb.accdb" 
        DeleteCommand="DELETE FROM [MenuTable] WHERE (([ID] = ?))" 
        InsertCommand="INSERT INTO [MenuTable] ([ID], [ItemName], [ItemSize], [ItemPrice]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [MenuTable]" 
        UpdateCommand="UPDATE [MenuTable] SET [ItemName] = ?, [ItemSize] = ?, [ItemPrice] = ? WHERE (([ID] = ?))">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemSize" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="ItemSize" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Double" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

