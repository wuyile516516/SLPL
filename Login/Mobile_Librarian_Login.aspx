<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Mobile_Librarian_Login.aspx.vb" Inherits="Login_Mobile_Librarian_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" type="text/css" href="~/Mobile.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="#333333">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
    <div class="footer">
             <div>University of Iowa, Iowa City, IA 52245</div>
             <div>copyright &copy University of Iowa, System And Analysis class, Group3, 2013</div>
                </div>
    </form>
</body>
</html>
