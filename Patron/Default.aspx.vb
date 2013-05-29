Imports System.Data.SqlClient
Imports System
Imports System.Configuration
Imports System.Data
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Partial Class _Default

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim userName As String = User.Identity.Name
        'The welcome label
        Welcome_label.Text = "Welcome " & userName

       
        Dim sql As String = "SELECT vw_slpl_rentMaterial.rentID, vw_slpl_rentMaterial.gameID, slpl_allMaterial.title, vw_slpl_rentMaterial.date_borrow, vw_slpl_rentMaterial.date_due " &
                            "FROM aspnet_Users INNER JOIN vw_slpl_rentMaterial ON aspnet_Users.UserId = vw_slpl_rentMaterial.UserId INNER JOIN slpl_allMaterial ON vw_slpl_rentMaterial.gameID = slpl_allMaterial.bookID" &
                           " WHERE(vw_slpl_rentMaterial.date_return IS NULL) and aspnet_Users.Username = '" & userName & "'"
        Using connObj As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
            Using cmdobj As New SqlCommand(sql, connObj)
                connObj.Open()
                Repeater1.DataSource = cmdobj.ExecuteReader
                Repeater1.DataBind()
                Repeater1.Visible = (Repeater1.Items.Count > 0)

            End Using
                connObj.Close()
            End Using


    End Sub
End Class
