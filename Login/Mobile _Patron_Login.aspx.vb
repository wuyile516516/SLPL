
Partial Class Login_Mobile__Patron_Login
    Inherits System.Web.UI.Page

    Protected Sub Login1_Load(sender As Object, e As System.EventArgs) Handles Login1.Load
        Login1.Focus()
    End Sub

    Protected Sub Login1_LoggedIn(sender As Object, e As System.EventArgs) Handles Login1.LoggedIn
        Response.Redirect("~/Mobile/Patron_Material.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub
End Class
