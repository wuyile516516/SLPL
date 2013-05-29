<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CheckOut.aspx.vb" Inherits="Librarian_CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <div Class="position1">
    Username: <asp:TextBox ID="tb_UserName" runat = "server" ></asp:TextBox></div>
    <br />
    <br />
    <div Class="position3">
    Material ID:<asp:TextBox ID="tb_material" runat = "server" ></asp:TextBox></div>
    <br />
    <asp:Label ID="mgsLable" runat="server" Text="" Font-Bold="True" Font-Size="X-large"></asp:Label>
    <br />
    <div Class="position2"><asp:button ID = "btn_Checkout" runat ="server" Text = "Checkt Out" /></div>
    </div>
</asp:Content>

