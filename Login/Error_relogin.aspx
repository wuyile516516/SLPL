<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Error_relogin.aspx.vb" Inherits="Login_Error_relogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h2 class="title">We are sorry! The username and password you entered was incorrect, please try again!</h2>
    
    

        <asp:Login ID="Login1" runat="server">
        </asp:Login>


    </div>

</asp:Content>

