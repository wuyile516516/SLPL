Imports System.Data.SqlClient
Imports System
Imports System.Configuration
Imports System.Data
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq

Partial Class Default2
    Inherits System.Web.UI.Page
    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delBook As String = e.Values("title").ToString
        booktable.Visible = False
        DVDTABLE.Visible = False
        GAMETABLE.Visible = False
        Dim delCalNum As String = e.Values("callNumber").ToString
        booklblmsgbox.Text = "The record <span class=deletedRecHighlight> " & delBook & " </span> has been deleted"
        Response.AddHeader("REFRESH", "3;URL=./Material.aspx")

    End Sub

    Protected Sub DetailsView2_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView2.ItemDeleted
        Dim delDVD As String = e.Values("title").ToString

        booktable.Visible = False
        DVDTABLE.Visible = False
        GAMETABLE.Visible = False
        booklblmsgbox.Text = "The record <span class=deletedRecHighlight> " & delDVD & " </span> has been deleted"
        Response.AddHeader("REFRESH", "3;URL=./Material.aspx")

    End Sub

    Protected Sub DetailsView3_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView3.ItemDeleted
        booktable.Visible = False
        DVDTABLE.Visible = False
        GAMETABLE.Visible = False
        Dim delGame As String = e.Values("title").ToString


        booklblmsgbox.Text = "The record <span class=deletedRecHighlight> " & delGame & " </span> has been deleted"
        Response.AddHeader("REFRESH", "3;URL=./Material.aspx")

    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Dim upBook As String = e.NewValues("title").ToString
        Response.Write("The item")
        Response.Write(upBook)
        Response.Write("has been updated")


    End Sub

    Protected Sub DetailsView2_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView2.ItemUpdated
        Dim upBook As String = e.NewValues("title").ToString
        Response.Write("The item")
        Response.Write(upBook)
        Response.Write("has been updated")


    End Sub

    Protected Sub DetailsView3_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView3.ItemUpdated
        Dim upBook As String = e.NewValues("title").ToString
        Response.Write("The item")
        Response.Write(upBook)
        Response.Write("has been updated")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        booktable.Visible = True
        GAMETABLE.Visible = True
        booktable.Visible = True
    End Sub
End Class
