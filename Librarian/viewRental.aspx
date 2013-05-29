<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewRental.aspx.vb" Inherits="Librarian_viewRental" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="title">Current Outstanding Rentals</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="rentID" HeaderText="RentID" 
                SortExpression="rentID" />
            <asp:BoundField DataField="gameID" HeaderText="MaterialID" 
                SortExpression="gameID" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" 
                SortExpression="UserId" />
            <asp:BoundField DataField="date_borrow" HeaderText="Date Borrow" 
                SortExpression="date_borrow" />
            <asp:BoundField DataField="date_due" HeaderText="Date Due" 
                SortExpression="date_due" />
            <asp:BoundField DataField="issue_by" HeaderText="Issue By" 
                SortExpression="issue_by" />
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



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        
        SelectCommand="SELECT rentID, gameID, UserId, date_borrow, date_due, issue_by FROM vw_slpl_rentMaterial WHERE (date_return IS NULL)"></asp:SqlDataSource>
    
    <a href="Default.aspx">Back to Login Home</a>
</asp:Content>

