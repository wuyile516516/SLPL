<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddMaterial.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="title">Add New Book</h1>
    <p class="title">Material ID:<asp:TextBox ID="TextBox1" runat="server" 
            style="margin-left: 33px; margin-bottom: 0px"></asp:TextBox>
        <asp:Label ID="mgsLable" runat="server" Text=""></asp:Label>
    &nbsp;1/2/3*********(10 digits, 1-book,2-DVD, 3-Game)</p>
    <p class="title">CallNumber:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;<asp:Label ID="callNumlbl" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">ISBN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="ISBNlbl" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="titlelbl" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">Author:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="authorlbl" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">Publisher:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="authorlbl0" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">Publish Year:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    &nbsp;<asp:Label ID="yearlbl" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">Availability:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="availabledropdown" runat="server">
            <asp:ListItem Value="Y">Y-Available</asp:ListItem>
            <asp:ListItem Value="N">N-Unavailable</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="avalbl" runat="server" Text=""></asp:Label>
    </p>
    <p class="title">Upload Small Picture:&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
    
&nbsp;<asp:Label ID="ResponseSlPicBL" runat="server" Text="Label"></asp:Label>
    </p>
    <p class="title">Upload Big Picture:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:FileUpload ID="FileUpload2" runat="server" />
    
&nbsp;<asp:Label ID="ResponseBigPicBL" runat="server" Text="Label"></asp:Label>
    </p>
    <p class="title">
        Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" 
            runat="server"></asp:TextBox>
    
    </p>
    <p class="title">
     <asp:Button ID="Insert" runat="server" Text="Insert" />
    
    </p>

    </asp:Content>