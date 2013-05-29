<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Application.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="title">Application Form</h1>
<iframe src = "PatronApplication.pdf" style="height: 718px; width: 719px" >Patron Application</iframe>
<p>If you cannot view the file, please download the form <a href="PatronApplication.pdf">here.</a></p>
</asp:Content>

