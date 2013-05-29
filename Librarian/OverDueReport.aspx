<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="OverDueReport.aspx.vb" Inherits="Librarian_OverDueReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        
        SelectCommand="SELECT slpl_userInfo.firstName, slpl_userInfo.lastName, aspnet_Membership.Email, slpl_userInfo.phone, vw_slpl_rentMaterial.date_borrow, vw_slpl_rentMaterial.date_due, vw_slpl_rentMaterial.issue_by, vw_slpl_rentMaterial.date_return, vw_slpl_rentMaterial.return_by FROM aspnet_Membership INNER JOIN slpl_userInfo ON aspnet_Membership.UserId = slpl_userInfo.UserId INNER JOIN vw_slpl_rentMaterial ON aspnet_Membership.UserId = vw_slpl_rentMaterial.UserId">
    </asp:SqlDataSource>
    <h1>Overdue Report</h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="firstName" HeaderText="First Name" 
                SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="Last Name" 
                SortExpression="lastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="date_borrow" HeaderText="Date Borrow" 
                SortExpression="date_borrow" />
            <asp:BoundField DataField="date_due" HeaderText="Date Due" 
                SortExpression="date_due" />
            <asp:BoundField DataField="issue_by" HeaderText="Issue By" 
                SortExpression="issue_by" />
            <asp:BoundField DataField="date_return" HeaderText="Date Return" 
                SortExpression="date_return" />
            <asp:BoundField DataField="return_by" HeaderText="Return By" 
                SortExpression="return_by" />
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

</asp:Content>

