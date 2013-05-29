<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_allMaterial]"></asp:SqlDataSource>
        <h1 class="title">SLPL Collection</h1><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" style="margin-top: 0px; margin-right: 2px;" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="bookID" HeaderText="BookID" 
                SortExpression="bookID" />
            <asp:ImageField  DataImageUrlField="ISBN" 
                DataImageUrlFormatString="Pictures/{0}-2.jpg" HeaderText="Picture" 
                NullDisplayText="No Picture Available">
            </asp:ImageField>
            <asp:BoundField DataField="callNumber" HeaderText="Call Number" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="Author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="Publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="availability" HeaderText="Availability" 
                SortExpression="availability" />
            <asp:HyperLinkField DataNavigateUrlFields="bookID" 
                DataNavigateUrlFormatString="Details.aspx?bookID={0}" HeaderText="Details" 
                Text="View Details" />
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
    <a href="Default.aspx">Back</a>
</asp:Content>

