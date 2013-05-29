<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ViewPatron.aspx.vb" Inherits="Librarian_ViewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="title">Current Library Patron</h1>
 <asp:TextBox ID="SearchTB" runat="server" Font-Italic="True"></asp:TextBox>
    <asp:Button ID="SearchBTN" runat="server" Text="Search" />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="UserId" Height="197px" 
        Width="402px" AllowPaging="True" AllowSorting="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="firstName" HeaderText="First Name" 
            SortExpression="firstName" />
        <asp:BoundField DataField="lastName" HeaderText="Last Name" 
            SortExpression="lastName" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
        <asp:HyperLinkField DataNavigateUrlFields="UserId" 
            DataNavigateUrlFormatString="PatronDetails.aspx?UserId={0}" Text="Select" />
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
        
        SelectCommand="SELECT [firstName], [lastName], [city], [state], [UserId] FROM [slpl_userInfo]">
    </asp:SqlDataSource>
    <br />
    <a href="Default.aspx">Back to Login Home</a>
    <br />
</asp:Content>

