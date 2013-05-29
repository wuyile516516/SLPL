Imports System.Web.Configuration
Imports System.Data.SqlClient
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
   

   
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        TimeLabel.Text = "Current time:" + DateTime.Now.ToString()
        SourceTB.Focus()

        Dim amountCountSQL = "SELECT count(*) FROM SLPL_ALLMATERIAL"
        'check if the rentid exist and get the material ID 
        Using connObj As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
            Using cmdobj As New SqlCommand(amountCountSQL, connObj)
                connObj.Open()
                Using readObj As SqlDataReader = cmdobj.ExecuteReader
                    While readObj.Read
                        countMaterialLabel.Text = "The number of materials we have are " & readObj.GetValue(0)

                    End While
                End Using
            End Using
        End Using
    End Sub

End Class

