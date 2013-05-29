<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="title">Book Collection</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        
        SelectCommand="SELECT * FROM [slpl_material_book] WHERE ([bookID] = @bookID)" 
        DeleteCommand="DELETE FROM [slpl_material_book] WHERE [bookID] = @bookID" 
        InsertCommand="INSERT INTO [slpl_material_book] ([bookID], [callNumber], [title], [author], [publisher], [publishYear], [description], [availability]) VALUES (@bookID, @callNumber, @title, @author, @publisher, @publishYear, @description, @availability)" 
        UpdateCommand="UPDATE [slpl_material_book] SET [callNumber] = @callNumber, [title] = @title, [author] = @author, [publisher] = @publisher, [publishYear] = @publishYear, [description] = @description, [availability] = @availability WHERE [bookID] = @bookID">
        <DeleteParameters>
            <asp:Parameter Name="bookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="bookID" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="DateTime" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="bookID" QueryStringField="bookID" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="DateTime" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="bookID" Type="String" />
            
       
        </UpdateParameters>
         
    </asp:SqlDataSource>
    <div ID = "booktable" runat = "server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="bookID" DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px" AllowPaging="True" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="bookID" HeaderText="bookID" ReadOnly="True" 
                SortExpression="bookID" />
            <asp:BoundField DataField="callNumber" HeaderText="callNumber" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="publishYear" HeaderText="publishYear" 
                SortExpression="publishYear" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="availability" HeaderText="availability" 
                SortExpression="availability" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
             <asp:ImageField DataImageUrlField="ISBN" HeaderText="Image" 
                DataImageUrlFormatString="../Material/Pictures/{0}-1.jpg" AlternateText="No Picture Available">
            </asp:ImageField>
        </Fields>
       
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
       
    </asp:DetailsView>
     
    <a href="Material.aspx">Back</a><br />
    </div>
    <asp:Label ID="booklblmsgbox" runat="server" Text=""></asp:Label>
    <br />
    <div id = "DVDTABLE" runat ="server" >
    <hr />
    <h1 class="title">DVD Collection</h1>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_material_DVD] WHERE ([DVDID] = @DVDID)" 
        DeleteCommand="DELETE FROM [slpl_material_DVD] WHERE [DVDID] = @DVDID" 
        InsertCommand="INSERT INTO [slpl_material_DVD] ([DVDID], [callNumber], [title], [author], [publisher], [publishYear], [description], [availability]) VALUES (@DVDID, @callNumber, @title, @author, @publisher, @publishYear, @description, @availability)" 
        UpdateCommand="UPDATE [slpl_material_DVD] SET [callNumber] = @callNumber, [title] = @title, [author] = @author, [publisher] = @publisher, [publishYear] = @publishYear, [description] = @description, [availability] = @availability WHERE [DVDID] = @DVDID">
        <DeleteParameters>
            <asp:Parameter Name="DVDID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DVDID" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="DateTime" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="DVDID" QueryStringField="DVDID" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="DateTime" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="DVDID" Type="String" />
        </UpdateParameters>
       
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        DataKeyNames="DVDID" DataSourceID="SqlDataSource2" Height="50px" 
        Width="125px" AllowPaging="True" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="DVDID" HeaderText="DVDID" ReadOnly="True" 
                SortExpression="DVDID" />
            <asp:BoundField DataField="callNumber" HeaderText="callNumber" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="publishYear" HeaderText="publishYear" 
                SortExpression="publishYear" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="availability" HeaderText="availability" 
                SortExpression="availability" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
                <asp:ImageField DataImageUrlField="ISBN" HeaderText="Image" 
                DataImageUrlFormatString="../Material/Pictures/{0}-1.jpg" AlternateText="No Picture Available">
            </asp:ImageField>
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
     
    <a href="Material.aspx">Back</a><br />
    </div>

    <div ID = "GAMETABLE" runat = "server"> 
    <hr />
    <h1 class="title">Game Collection </h1>
    <asp:SqlDataSource ID="SqlDataSource3" 
            runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
            
        
        SelectCommand="SELECT * FROM [slpl_material_game] WHERE ([gameID] = @gameID)" 
        DeleteCommand="DELETE FROM [slpl_material_game] WHERE [gameID] = @gameID" 
        InsertCommand="INSERT INTO [slpl_material_game] ([gameID], [callNumber], [title], [author], [publisher], [publishYear], [description], [availability]) VALUES (@gameID, @callNumber, @title, @author, @publisher, @publishYear, @description, @availability)" 
        UpdateCommand="UPDATE [slpl_material_game] SET [callNumber] = @callNumber, [title] = @title, [author] = @author, [publisher] = @publisher, [publishYear] = @publishYear, [description] = @description, [availability] = @availability WHERE [gameID] = @gameID">
        <DeleteParameters>
            <asp:Parameter Name="gameID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="gameID" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="DateTime" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="gameID" QueryStringField="gameID" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="publishYear" Type="DateTime" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="gameID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
        DataKeyNames="gameID" DataSourceID="SqlDataSource3" Height="50px" 
        Width="125px" AllowPaging="True" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="gameID" HeaderText="gameID" ReadOnly="True" 
                    SortExpression="gameID" />
                <asp:BoundField DataField="callNumber" HeaderText="callNumber" 
                    SortExpression="callNumber" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" 
                    SortExpression="author" />
                <asp:BoundField DataField="publisher" HeaderText="publisher" 
                    SortExpression="publisher" />
                <asp:BoundField DataField="publishYear" HeaderText="publishYear" 
                    SortExpression="publishYear" />
                <asp:BoundField DataField="description" HeaderText="description" 
                    SortExpression="description" />
                <asp:BoundField DataField="availability" HeaderText="availability" 
                    SortExpression="availability" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
                    <asp:ImageField DataImageUrlField="ISBN" HeaderText="Image" 
                DataImageUrlFormatString="..Material/Pictures/{0}-1.jpg" AlternateText="No Picture Available">
            </asp:ImageField>
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
   <a href="Material.aspx">Back</a>
    </div> 


    </div>
</asp:Content>

