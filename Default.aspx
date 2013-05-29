<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- bxSlider Javascript file -->
<script src="jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="jquery.bxslider.css" rel="stylesheet" />


<div class="slideshow">
    <h4 class="title">Welcome to SLPL!</h4> 
    
    <hr />
        <ul class="bxslider" >
          <li ><img src="slideImage/1.jpg"/> 
              <p style="text-align: center; font-family: Arial, Helvetica, sans-serif;">Friendly set up of Magazine shelves for easy browsing.</p></li>
          <li><img src="slideImage/2.jpg" /><p style="text-align: center;font-family: Arial, Helvetica, sans-serif;">We welcome all kinds of children activities. Please <a "mailto=SLPL@uiowa.edu">mail to SLPL for reservation</a></p></li>
          <li><img src="slideImage/3.jpg" /><p style="text-align: center;font-family: Arial, Helvetica, sans-serif;">Children's Reading is considerately decorate with child-size furniture.</p></li
        </ul>
</div>

<br />
<br />
<div class="review"> 
<h4 class="title">Today's Review</h4>
<hr />
<h3 class="title" style="font-family: Arial"><a href="Review.aspx"> Mystery Alaska (1999)</a></h3>
        <p>&nbsp;<img alt="Mystery, Alaska" src="Material/Pictures/9780788818226-2.jpg" 
            style="width: 80px; height: 113px; font-family: Arial;" /><span 
                style="font-family: Arial">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In this comic drama about fame, sports, and small-town life, Mystery, Alaska is a small town in one of the least accessible parts of 
the coldest state in the union. It's a town where everyone knows each other and there isn't much to do. In places like this, 
small things tend to become very important, and in Mystery, the one thing that keeps everyone sane is hockey. <a href="Review.aspx">Read More..</a></span></p>

</div>
<div class="announcement"  > 

<h4 class="title" >Annoucement</h4>
<hr />
<ul>
<li><span style="font-family: Arial">The library is now accepting application to become a patron. Please click <a href="Application.aspx">here</a> to download the form</span></li>
<li><span style="font-family: Arial">Want to read with similar minds? Welcome to reading Groups! Please <a href="mailto:SLPL@uiowa.edu">email to SLPL</a> with subject "Reading Group" for more information.</span></li>

</ul>


</div>
 
</asp:Content>

