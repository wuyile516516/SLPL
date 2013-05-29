<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Mobile_Application.aspx.vb" Inherits="Mobile_Mobile_Application" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Apply Today!</title>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <h1 class="title">Application Form</h1>
    <iframe src = "../PatronApplication.pdf" style="height: 718px; width: 719px" >Patron Application</iframe>
    <p>If you cannot view the file, please download the form <a href="../PatronApplication.pdf">here.</a></p>
    <div class="footer">
             <div>University of Iowa, Iowa City, IA 52245</div>
             <div>copyright &copy University of Iowa, System And Analysis class, Group3, 2013</div>
                </div>
    <form id="form1" runat="server">
    </form>
</body>
</html>
