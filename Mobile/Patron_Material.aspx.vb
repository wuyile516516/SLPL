Imports System.Data.SqlClient
Partial Class Mobile_Patron_Material
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim userName As String = User.Identity.Name
        'The welcome label
        Welcome_label.Text = "Welcome " & userName


        Dim sql As String = "SELECT vw_slpl_rentMaterial.rentID, vw_slpl_rentMaterial.gameID, vw_slpl_rentMaterial.date_borrow, vw_slpl_rentMaterial.date_due " & _
                           "FROM aspnet_Users INNER JOIN vw_slpl_rentMaterial ON aspnet_Users.UserId = vw_slpl_rentMaterial.UserId " &
                           "WHERE(date_return IS NULL) and aspnet_Users.Username = '" & userName & "'"
        Using connObj As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
            Using cmdobj As New SqlCommand(sql, connObj)
                connObj.Open()
                Using readObj As SqlDataReader = cmdobj.ExecuteReader
                    If readObj.HasRows = False Then
                        msglabel.Text = "You haven't rented any thing"
                    Else
                    End If
                End Using
                connObj.Close()
            End Using
        End Using

        SqlDataSource1.SelectCommand = sql
    End Sub
End Class
