Imports System.Data.SqlClient
Partial Class Librarian_CheckOut
    Inherits System.Web.UI.Page

    Protected Sub btn_Checkout_Click(sender As Object, e As System.EventArgs) Handles btn_Checkout.Click
        Dim strMaterialId As String = tb_material.Text
        Dim strUserName As String = tb_UserName.Text
        Dim rentDate As DateTime = DateTime.Now
        Dim dateDueBack As DateTime = DateAdd("d", 30, Today)
        Dim issueBy As String = Environ("Username")
        Dim sqlCheck As String
        Dim available As String
        Dim sqlpratron As String
        Dim itemcheck As String
        Dim ictl As Integer
        sqlpratron = "select * from aspnet_users where UserName= '" & strUserName & "'"
        sqlCheck = "select * from slpl_allMaterial where bookID= '" & strMaterialId & "'"
        itemcheck = "select * from vw_slpl_rentMaterial where UserId = (select UserID from aspnet_Users where UserName =  '" & strUserName & "') and date_return is null"
        mgsLable.Text = ""
        'check if empty
        If tb_UserName.Text = "" Then
            mgsLable.Text = "The user name needs to be filled"
            Exit Sub
        End If
        If tb_material.Text = "" Then
            mgsLable.Text = "The material id needs to be filled"
            Exit Sub
        End If
        Using connObj As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
            'check if the username exist
            Using cmd As New SqlCommand(sqlpratron, connObj)
                connObj.Open()
                Using readPObj As SqlDataReader = cmd.ExecuteReader
                    If readPObj.HasRows = False Then
                        mgsLable.Text = "User does not exist"
                        Exit Sub
                    End If
                End Using
                connObj.Close()
            End Using
            'check if the item is available
            Using cmdobj As New SqlCommand(sqlCheck, connObj)
                connObj.Open()
                Using readObj As SqlDataReader = cmdobj.ExecuteReader
                    If readObj.HasRows = False Then
                        mgsLable.Text = "The Material ID you entered does not exist"
                        Exit Sub
                    End If
                    While readObj.Read
                        available = readObj("availability").ToString
                        If available = "N" Then
                            tb_material.Text = ""
                            tb_UserName.Text = ""
                            mgsLable.Text = "The item is already checked-out"
                            Exit Sub
                        End If
                    End While
                End Using
                connObj.Close()
            End Using
            ictl = 0
            Using cmdobj As New SqlCommand(itemcheck, connObj)
                connObj.Open()
                Using readObj As SqlDataReader = cmdobj.ExecuteReader
                    While readObj.Read
                        ictl = ictl + 1
                        If ictl = 10 Then
                            mgsLable.Text = "This user has rented 10 items already"

                            Exit Sub
                        End If
                    End While
                End Using
                connObj.Close()
            End Using

        End Using



        'if the item is availble, go to excute the command
        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand



        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "slpl_material_checkout"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure


        sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
        sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", strMaterialId))
        sqlCmd.Parameters.Add(New SqlParameter("@RentDate", rentDate))
        sqlCmd.Parameters.Add(New SqlParameter("@DateDueBack", dateDueBack))
        sqlCmd.Parameters.Add(New SqlParameter("@issueBy", issueBy))
        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("viewRental.aspx")

    End Sub

    
  
    
    Protected Sub tb_material_Load(sender As Object, e As System.EventArgs) Handles tb_material.Load
        tb_UserName.Focus()
    End Sub
End Class
