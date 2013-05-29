<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Relogin.aspx.vb" Inherits="Login_Seperate_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

    <h1 class="title">You are not authorized to view the content.</h1>

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

