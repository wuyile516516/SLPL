
Partial Class Login_Mobile_Librarian_Login
    Inherits System.Web.UI.Page


    Protected Sub Login1_LoggingIn(sender As Object, e As System.Web.UI.WebControls.LoginCancelEventArgs) Handles Login1.LoggingIn
        Response.Redirect("../Mobile/default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub
End Class
