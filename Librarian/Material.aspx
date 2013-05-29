<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Material.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="search">
<br />
    <asp:TextBox ID="SearchTB" runat="server" Font-Italic="True" 
        Font-Strikeout="False"></asp:TextBox>
    <asp:DropDownList ID="SearchDropDown" runat="server">
        <asp:ListItem>Book</asp:ListItem>
        <asp:ListItem>DVD</asp:ListItem>
        <asp:ListItem>Game</asp:ListItem>
    </asp:DropDownList>
     <asp:Button ID="SearchBTN" runat="server" Text="Search" />
     <asp:Button ID="allMaterial" runat="server" Text="All Material" />
    <br />
</div>
<br /><br />
<div id = "bookDiv" runat = "server">
    <hr />
    <h1 class="title">Book Collection</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_material_book]" 
        DeleteCommand="DELETE FROM [slpl_material_book] WHERE [bookID] = @bookID" 
        InsertCommand="INSERT INTO [slpl_material_book] ([bookID], [callNumber], [ISBN], [title], [author], [publisher], [publishYear], [description], [availability], [materialPic]) VALUES (@bookID, @callNumber, @ISBN, @title, @author, @publisher, @publishYear, @description, @availability, @materialPic)" 
        UpdateCommand="UPDATE [slpl_material_book] SET [callNumber] = @callNumber, [ISBN] = @ISBN, [title] = @title, [author] = @author, [publisher] = @publisher, [publishYear] = @publishYear, [description] = @description, [availability] = @availability, [materialPic] = @materialPic WHERE [bookID] = @bookID">
        <DeleteParameters>
            <asp:Parameter Name="bookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="bookID" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="ISBN" Type="string" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="materialPic" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="ISBN" Type="string" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="materialPic" Type="String" />
            <asp:Parameter Name="bookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="bookID" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ImageField DataImageUrlField="ISBN" 
                DataImageUrlFormatString="../Material/Pictures/{0}-2.jpg" 
                HeaderText="Picture" NullDisplayText="No Picture Available" 
                AlternateText="Not Available">
            </asp:ImageField>
            <asp:BoundField DataField="bookID" HeaderText="BookID" ReadOnly="True" 
                SortExpression="bookID" />
            <asp:BoundField DataField="callNumber" HeaderText="CallNumber" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="Title" 
                SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="Author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="Publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" />
            <asp:BoundField DataField="availability" HeaderText="Availability" 
                SortExpression="availability" />
            <asp:HyperLinkField DataNavigateUrlFields="BookID" 
                DataNavigateUrlFormatString="MaterialDetails.aspx?BookID={0}" 
                HeaderText="Details" Text="View Details" >
            <ControlStyle ForeColor="#3399FF" />
            </asp:HyperLinkField>
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
    <a href="AddMaterial.aspx">Add New Book</a><br />
</div> 

<div id = "DVDdiv" runat = "server">
    <hr />
    <h1 class="title">DVD Collection</h1>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_material_DVD]" 
        DeleteCommand="DELETE FROM [slpl_material_DVD] WHERE [DVDID] = @DVDID" 
        InsertCommand="INSERT INTO [slpl_material_DVD] ([DVDID], [callNumber], [ISBN], [title], [author], [publisher], [publishYear], [description], [availability], [materialPic]) VALUES (@DVDID, @callNumber, @ISBN, @title, @author, @publisher, @publishYear, @description, @availability, @materialPic)" 
        UpdateCommand="UPDATE [slpl_material_DVD] SET [callNumber] = @callNumber, [ISBN] = @ISBN, [title] = @title, [author] = @author, [publisher] = @publisher, [publishYear] = @publishYear, [description] = @description, [availability] = @availability, [materialPic] = @materialPic WHERE [DVDID] = @DVDID">
        <DeleteParameters>
            <asp:Parameter Name="DVDID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DVDID" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="ISBN" Type="Decimal" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="materialPic" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="ISBN" Type="Decimal" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="materialPic" Type="String" />
            <asp:Parameter Name="DVDID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="DVDID" DataSourceID="SqlDataSource2" AllowPaging="True" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
        Width="1037px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ImageField DataImageUrlField="ISBN" 
                DataImageUrlFormatString="../Material/Pictures/{0}-2.jpg" HeaderText="Picture" 
                NullDisplayText="No Picture Available">
            </asp:ImageField>
            <asp:BoundField DataField="DVDID" HeaderText="DVDID" ReadOnly="True" 
                SortExpression="DVDID" />
            <asp:BoundField DataField="callNumber" HeaderText="CallNumber" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="Title" 
                SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="Author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="Publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="availability" HeaderText="Availability" 
                SortExpression="availability" />
            <asp:HyperLinkField DataNavigateUrlFields="DVDID" 
                DataNavigateUrlFormatString="MaterialDetails.aspx?DVDID={0}" 
                HeaderText="Details" Text="View Details" />
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
    <a href="AddMaterial.aspx">Add New DVD</a><br />
</div>

<div id = "gameDiv" runat = "server">
    <hr />
    <h1 class="title">Game Collection </h1>
    <asp:SqlDataSource ID="SqlDataSource3" 
            runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
            SelectCommand="SELECT * FROM [slpl_material_game]" 
        DeleteCommand="DELETE FROM [slpl_material_game] WHERE [gameID] = @gameID" 
        InsertCommand="INSERT INTO [slpl_material_game] ([gameID], [callNumber], [ISBN], [title], [author], [publisher], [publishYear], [description], [availability], [materialPic]) VALUES (@gameID, @callNumber, @ISBN, @title, @author, @publisher, @publishYear, @description, @availability, @materialPic)" 
        UpdateCommand="UPDATE [slpl_material_game] SET [callNumber] = @callNumber, [ISBN] = @ISBN, [title] = @title, [author] = @author, [publisher] = @publisher, [publishYear] = @publishYear, [description] = @description, [availability] = @availability, [materialPic] = @materialPic WHERE [gameID] = @gameID">
        <DeleteParameters>
            <asp:Parameter Name="gameID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="gameID" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="materialPic" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="Int32" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="materialPic" Type="String" />
            <asp:Parameter Name="gameID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
         <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="gameID" 
        DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="1034px">
             <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField AlternateText="No Available" DataImageUrlField="ISBN" 
                    DataImageUrlFormatString="../Material/Pictures/{0}-2.jpg" HeaderText="Picture">
                </asp:ImageField>
                <asp:BoundField DataField="gameID" HeaderText="GameID" ReadOnly="True" 
                    SortExpression="gameID" />
                <asp:BoundField DataField="callNumber" HeaderText="CallNumer" 
                    SortExpression="callNumber" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="Author" 
                    SortExpression="author" />
                <asp:BoundField DataField="publisher" HeaderText="Publisher" 
                    SortExpression="publisher" />
                <asp:BoundField DataField="availability" HeaderText="Availability" 
                    SortExpression="availability" />
                <asp:HyperLinkField DataNavigateUrlFields="GameID" 
                    DataNavigateUrlFormatString="MaterialDetails.aspx?GameID={0}" 
                    HeaderText="Details" Text="View Details" />
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
        <a href="AddMaterial.aspx">Add New Game</a><br />
</div> 
&nbsp;
   
    


</asp:Content>

