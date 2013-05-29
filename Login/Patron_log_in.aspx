<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Patron_log_in.aspx.vb" Inherits="Login_Patron_log_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<h1 class="title">Welcome to South Liberty Public Library! Please log in to view materials.</h1>
    
    <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
</div>
</asp:Content>


