Imports System.Web.Security
Imports System.Web.Security.Roles
Imports System.Web.Security.Membership
Imports System.Data

Partial Class Librarian_PatronDetails
    Inherits System.Web.UI.Page

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim selUser As Label = CType(FormView1.FindControl("UserNameLabel"), Label)

        If selUser IsNot Nothing Then
            Dim delUser As String = selUser.Text

            Membership.DeleteUser(selUser.Text)
        End If
    End Sub

    Protected Sub FormView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim delCustomer As String = e.Values("firstName").ToString()
        lbl_DeletedCustomer.Text = "The record <span class=deletedRecHighlight> " & delCustomer & " </span> has been deleted"

        Response.AddHeader("REFRESH", "3;URL=ViewPatron.aspx")
    End Sub

End Class
