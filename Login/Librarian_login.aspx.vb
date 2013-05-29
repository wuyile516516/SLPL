
Partial Class Login_Librarian_login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim UserName = User.Identity.Name
        If IsDBNull(UserName) = True Or UserName = "" Then

        Else
            Response.Redirect("~/Librarian/Default.aspx")

        End If
    End Sub

    Protected Sub Login1_Load(sender As Object, e As System.EventArgs) Handles Login1.Load
        Login1.Focus()
    End Sub

    Protected Sub Login1_LoggedIn(sender As Object, e As System.EventArgs) Handles Login1.LoggedIn
        Response.Redirect("~/Librarian/Default.aspx")
    End Sub

    Protected Sub Login1_LoginError(sender As Object, e As System.EventArgs) Handles Login1.LoginError
        Response.Redirect("~/Login/Error_relogin.aspx")
    End Sub
End Class
