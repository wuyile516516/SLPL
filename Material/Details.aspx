<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Default2" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        <div class="search">
             
             </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_allMaterial] WHERE ([bookID] = @bookID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="bookID" QueryStringField="bookID" 
                    Type="String" />
            </SelectParameters>
     </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
        Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="callNumber" HeaderText="Call Number" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="Author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="Publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="publishYear" HeaderText="Copyright" 
                SortExpression="publishYear" />
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" />
            <asp:BoundField DataField="availability" HeaderText="Availability" 
                SortExpression="availability" />
            <asp:ImageField DataImageUrlField="ISBN" 
                DataImageUrlFormatString="Pictures/{0}-1.jpg" AlternateText="No Picture Available">
            </asp:ImageField>
        </Fields>
  
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
  
    </asp:DetailsView>
      <a runat = "server"  href="Default.aspx">Back</a>
</asp:Content>


