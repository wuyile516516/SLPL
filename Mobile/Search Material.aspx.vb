

Partial Class Mobile_View_Collection
    Inherits System.Web.UI.Page

    Protected Sub tb_search1_Load(sender As Object, e As System.EventArgs) Handles tb_search1.Load
        tb_search1.Focus()
    End Sub

    
    Protected Sub tb_search1_TextChanged(sender As Object, e As System.EventArgs) Handles tb_search1.TextChanged

        Dim searchword As String = tb_search1.Text
        Dim selectstmt As String

        selectstmt = "SELECT * FROM [slpl_allMaterial] WHERE (title LIKE '%" + searchword + "%')"

        SqlDataSource1.SelectCommand = selectstmt




    End Sub
End Class
