Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Protected Sub Insert_Click(sender As Object, e As System.EventArgs) Handles Insert.Click
        ' Dim and read all the fields for the material table
        Dim v_bookid As String = TextBox1.Text
        Dim v_callnum As String = TextBox2.Text
        Dim v_ISBN As String = CStr(TextBox3.Text)
        Dim v_title As String = TextBox8.Text
        Dim v_author As String = TextBox5.Text
        Dim v_publisher As String = TextBox6.Text
        Dim v_publishyr As Integer = Convert.ToInt32(TextBox7.Text)
        Dim v_description As String = TextBox9.Text
        Dim v_availability As String = availabledropdown.SelectedValue
        Dim sqlCheck As String = "select * from slpl_allMaterial where bookID= '" & v_bookid & "'"
        'clean the label
        mgsLable.Text = ""
        ResponseBigPicBL.Text = ""
        ResponseSlPicBL.Text = ""
        'check if the material ID is 10 digts
        If Len(v_bookid) <> 10 Then
            mgsLable.Text = "The Material ID  you created does not meet the standard (10 digits)"
            Exit Sub
        ElseIf IsNumeric(v_bookid) = False Or v_bookid = "" Then
            mgsLable.Text = "The Material ID  you created does not meet the standard (no letters)"
            Exit Sub
        End If
        'check if empty
        If IsDBNull(v_callnum) = True Or v_callnum = "" Then
            callNumlbl.Text = "The call number needs to be filled"
            Exit Sub
        End If
        'check if empty
        If IsDBNull(v_ISBN) = True Or v_ISBN = "" Then
            ISBNlbl.Text = "The ISBN needs to be filled"
            Exit Sub
        End If
        'check if empty
        If IsDBNull(v_title) = True Or v_title = "" Then
            titlelbl.Text = "The Title needs to be filled"
            Exit Sub
        End If
        'check if empty
        If IsDBNull(v_author) = True Or v_author = "" Then
            authorlbl.Text = "The Author needs to be filled"
            Exit Sub
        End If
        'check if empty
        If IsDBNull(v_publisher) = True Or v_publisher = "" Then
            authorlbl.Text = "The Publisher needs to be filled"
            Exit Sub
        End If

        'check if the year is right 
        If IsNumeric(v_publishyr) = False Then
            yearlbl.Text = "The year need to be numbers"
            Exit Sub
        End If
        Using connObj As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
            Using cmdobj As New SqlCommand(sqlCheck, connObj)
                connObj.Open()
                Using readObj As SqlDataReader = cmdobj.ExecuteReader
                    If readObj.HasRows = True Then
                        mgsLable.Text = "The Material ID you entered already exist"
                        Exit Sub
                    End If
                End Using
                connObj.Close()
            End Using
        End Using
        'Dim the variables for the file upload procedure
        Dim SaveLocation As String = Server.MapPath("..\Material\Pictures\")
        Dim fileextension As String = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName)
        Dim v_photoname As String = CStr(v_ISBN) + ".jpg"
        If (fileextension = ".jpg") Then
            'Code for file upload
            If FileUpload1.HasFile And FileUpload2.HasFile Then
                Try
                    FileUpload1.SaveAs(SaveLocation & v_ISBN & "-2" & ".jpg")
                    FileUpload2.SaveAs(SaveLocation & v_ISBN & "-1" & ".jpg")
                Catch ex As Exception
                    ResponseSlPicBL.Text = "File upload error: " + ex.Message.ToString()
                End Try
            End If
            'Upload new book
            If Left(v_bookid, 1) = "1" Then
                Dim connectionstring As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
                Dim insertsql As String = "INSERT INTO [slpl_material_book] ([bookID], [callNumber], [ISBN], [title], [author], [publisher], [publishYear], [description], [availability], [materialPic]) VALUES (@v_bookid, @v_callnum, @v_ISBN, @v_title, @v_author, @v_publisher, @v_publishyr, @v_description, @v_availability, @v_photoname)"

                Using myConnection As New SqlConnection(connectionstring)
                    myConnection.Open()
                    Dim mycommand As New SqlCommand(insertsql, myConnection)
                    mycommand.Parameters.AddWithValue("@v_bookid", v_bookid)
                    mycommand.Parameters.AddWithValue("@v_callnum", v_callnum)
                    mycommand.Parameters.AddWithValue("@v_title", v_title)
                    mycommand.Parameters.AddWithValue("@v_author", v_author)
                    mycommand.Parameters.AddWithValue("@v_availability", v_availability)
                    mycommand.Parameters.AddWithValue("@v_publisher", v_publisher)
                    mycommand.Parameters.AddWithValue("@v_publishyr", v_publishyr)
                    mycommand.Parameters.AddWithValue("@v_ISBN", v_ISBN)
                    mycommand.Parameters.AddWithValue("@v_description", v_description)
                    mycommand.Parameters.AddWithValue("@v_photoname", v_photoname)
                    mycommand.ExecuteNonQuery()
                    myConnection.Close()
                End Using
                Response.Redirect("Material.aspx")

                ' Add new DVD
            ElseIf Left(v_bookid, 1) = "2" Then
                Dim connectionstring As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
                Dim insertsql As String = "INSERT INTO [slpl_material_DVD] ([DVDID], [callNumber], [ISBN], [title], [author], [publisher], [publishYear], [description], [availability], [materialPic]) VALUES (@v_bookid, @v_callnum, @v_ISBN, @v_title, @v_author, @v_publisher, @v_publishyr, @v_description, @v_availability, @v_photoname)"

                Using myConnection As New SqlConnection(connectionstring)
                    myConnection.Open()
                    Dim mycommand As New SqlCommand(insertsql, myConnection)
                    mycommand.Parameters.AddWithValue("@v_bookid", v_bookid)
                    mycommand.Parameters.AddWithValue("@v_callnum", v_callnum)
                    mycommand.Parameters.AddWithValue("@v_title", v_title)
                    mycommand.Parameters.AddWithValue("@v_author", v_author)
                    mycommand.Parameters.AddWithValue("@v_availability", v_availability)
                    mycommand.Parameters.AddWithValue("@v_publisher", v_publisher)
                    mycommand.Parameters.AddWithValue("@v_publishyr", v_publishyr)
                    mycommand.Parameters.AddWithValue("@v_ISBN", v_ISBN)
                    mycommand.Parameters.AddWithValue("@v_description", v_description)
                    mycommand.Parameters.AddWithValue("@v_photoname", v_photoname)
                    mycommand.ExecuteNonQuery()
                    myConnection.Close()
                End Using
                Response.Redirect("Material.aspx")

            ElseIf Left(v_bookid, 1) = "3" Then

                Dim connectionstring As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
                Dim insertsql As String = "INSERT INTO [slpl_material_game] ([gameID], [callNumber], [ISBN], [title], [author], [publisher], [publishYear], [description], [availability], [materialPic]) VALUES (@v_bookid, @v_callnum, @v_ISBN, @v_title, @v_author, @v_publisher, @v_publishyr, @v_description, @v_availability, @v_photoname)"

                Using myConnection As New SqlConnection(connectionstring)
                    myConnection.Open()
                    Dim mycommand As New SqlCommand(insertsql, myConnection)
                    mycommand.Parameters.AddWithValue("@v_bookid", v_bookid)
                    mycommand.Parameters.AddWithValue("@v_callnum", v_callnum)
                    mycommand.Parameters.AddWithValue("@v_title", v_title)
                    mycommand.Parameters.AddWithValue("@v_author", v_author)
                    mycommand.Parameters.AddWithValue("@v_availability", v_availability)
                    mycommand.Parameters.AddWithValue("@v_publisher", v_publisher)
                    mycommand.Parameters.AddWithValue("@v_publishyr", v_publishyr)
                    mycommand.Parameters.AddWithValue("@v_ISBN", v_ISBN)
                    mycommand.Parameters.AddWithValue("@v_description", v_description)
                    mycommand.Parameters.AddWithValue("@v_photoname", v_photoname)
                    mycommand.ExecuteNonQuery()
                    myConnection.Close()
                End Using
                Response.Redirect("Material.aspx")
            Else
                mgsLable.Text = "The material ID you enter does not starts with '1' or'2' or '3'"
                Exit Sub
            End If
        Else
            ResponseBigPicBL.Text = "Only .jpg files are allowed for images."
            ResponseSlPicBL.Text = "Only .jpg files are allowed for images."
        End If
        Response.Redirect("Material.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        TextBox1.Focus()
    End Sub
End Class
