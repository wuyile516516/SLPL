
Partial Class Librarian_OverDueReport
    Inherits System.Web.UI.Page
    Protected Sub Page_load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'declare variables
        Dim tooldue As String

        'sql to query the data that due by today or past
        tooldue = "SELECT slpl_userInfo.firstName, slpl_userInfo.lastName, aspnet_Membership.Email, slpl_userInfo.phone, vw_slpl_rentMaterial.date_borrow, vw_slpl_rentMaterial.date_due, vw_slpl_rentMaterial.issue_by, vw_slpl_rentMaterial.date_return, vw_slpl_rentMaterial.return_by " _
            & "FROM aspnet_Membership INNER JOIN slpl_userInfo ON aspnet_Membership.UserId = slpl_userInfo.UserId INNER JOIN vw_slpl_rentMaterial ON aspnet_Membership.UserId = vw_slpl_rentMaterial.UserId" _
            & " where date_due <= '" & DateTime.Now & "'"

        SqlDataSource1.SelectCommand = tooldue
    End Sub
End Class
