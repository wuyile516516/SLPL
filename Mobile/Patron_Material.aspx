<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Patron_Material.aspx.vb" Inherits="Mobile_Patron_Material" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Welcome_label" runat="server" Text=""></asp:Label>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="rentID" HeaderText="rentID" 
                SortExpression="rentID" />
            <asp:BoundField DataField="gameID" HeaderText="gameID" 
                SortExpression="gameID" />
            <asp:BoundField DataField="date_due" HeaderText="date_due" 
                SortExpression="date_due" />
            <asp:BoundField DataField="date_borrow" HeaderText="date_borrow" 
                SortExpression="date_borrow" />
        </Columns>
    </asp:GridView>

    <br />
    <asp:Label ID="msglabel" runat="server" Text=""></asp:Label>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
            SelectCommand="SELECT [rentID], [gameID], [date_due], [date_borrow] FROM [vw_slpl_rentMaterial] WHERE (date_return IS NULL)">
            
        </asp:SqlDataSource>
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
