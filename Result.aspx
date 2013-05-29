<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Result.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_allMaterial]"></asp:SqlDataSource>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" style="margin-top: 0px">
        <Columns>
            <asp:BoundField DataField="bookID" HeaderText="BookID" 
                SortExpression="bookID" />
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
        </Columns>
    </asp:GridView>
    <a href="Default.aspx">Back</a>
</asp:Content>

