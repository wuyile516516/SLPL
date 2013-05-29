<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="CheckIn.aspx.vb" Inherits="Librarian_CheckIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div Class="position1">
    Rent ID: <asp:TextBox ID="tb_rentId_ckin" runat = "server" ></asp:TextBox></div>
    <br />
    <br />
    <div Class="position2"><asp:button  ID = "btn_Checkin" runat ="server" Text = "Check In"/></div>
    <br />
    <br />
    <div Class="position1"><asp:Label ID="mgsLable_ckin" runat="server" Text="" Font-Bold="True" Font-Size="X-large"></asp:Label>
    </div>
</asp:Content>

