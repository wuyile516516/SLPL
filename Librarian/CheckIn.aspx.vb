Imports System.Data.SqlClient
Partial Class Librarian_CheckIn
    Inherits System.Web.UI.Page



    Protected Sub btn_Checkin_Click(sender As Object, e As System.EventArgs) Handles btn_Checkin.Click
        Dim rentID As Integer
        Dim sqlCheck As String
        Dim materialID As String
        Dim returnDate As DateTime = DateTime.Now()
        Dim issueBy As String = Environ("Username")
        Dim existCheck As String
        sqlCheck = "select * from vw_slpl_rentMaterial where rentID= '" & tb_rentId_ckin.Text.ToString & "'"
        'CHECK IF empty
        If tb_rentId_ckin.Text = "" Then
            mgsLable_ckin.Text = "The RentID needs to be filled"
        End If
        'check if the rentid exist and get the material ID 
        Using connObj As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
            Using cmdobj As New SqlCommand(sqlCheck, connObj)
                connObj.Open()
                Using readObj As SqlDataReader = cmdobj.ExecuteReader
                    'if there is no record in this database
                    If readObj.HasRows = False Then
                        mgsLable_ckin.Text = "Can't find this record"
                        Exit Sub
                        'if the record exist
                    Else
                        While readObj.Read
                            rentID = readObj("rentID")
                            materialID = readObj("gameID").ToString
                            existCheck = readObj("return_by").ToString
                            'if the material is already return for this record
                            If existCheck <> "" Then
                                mgsLable_ckin.Text = "The Item is already returned"
                                'if the material has not returned back
                            Else
                                'after passing the constraints
                                Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
                                Dim sqlAdp As New SqlDataAdapter
                                Dim sqlCmd As New SqlCommand

                                sqlCmd.Connection = sqlConn
                                sqlCmd.CommandText = "slpl_material_checkin"
                                sqlCmd.CommandType = Data.CommandType.StoredProcedure


                                sqlCmd.Parameters.Add(New SqlParameter("@rentID", rentID))
                                sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", materialID))
                                sqlCmd.Parameters.Add(New SqlParameter("@returnDate", returnDate))
                                sqlCmd.Parameters.Add(New SqlParameter("@returnBy", issueBy))
                                sqlConn.Open()
                                sqlCmd.ExecuteNonQuery()
                                sqlConn.Close()

                                mgsLable_ckin.Text = "The item " & materialID & " is checked-in"
                                Response.Redirect("viewRental.aspx")
                            End If
                        End While
                    End If
                End Using
                connObj.Close()
            End Using
        End Using



    End Sub

    Protected Sub tb_rentId_ckin_Load(sender As Object, e As System.EventArgs) Handles tb_rentId_ckin.Load
        tb_rentId_ckin.Focus()
    End Sub
End Class
