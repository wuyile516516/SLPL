Imports System.Data.SqlClient
Partial Class Librarin_Add_Customer
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ActiveStepChanged
        'Have we Just reached the complete steps?
        If CreateUserWizard1.ActiveStep.Title = "Complete" Then
            Dim UserSettings As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            'grap the variables that entered by the users
            Dim firstName As TextBox = CType(UserSettings.FindControl("user_FirstName"), TextBox)
            Dim lastName As TextBox = CType(UserSettings.FindControl("user_LastName"), TextBox)
            Dim birthday As TextBox = CType(UserSettings.FindControl("user_Birthday"), TextBox)
            Dim address As TextBox = CType(UserSettings.FindControl("user_Address"), TextBox)
            Dim address2 As TextBox = CType(UserSettings.FindControl("user_Address2"), TextBox)
            Dim city As TextBox = CType(UserSettings.FindControl("user_City"), TextBox)
            Dim state As String = state_dropdown.SelectedItem.Text
            Dim zipCode As TextBox = CType(UserSettings.FindControl("user_Zip"), TextBox)
            Dim phone As TextBox = CType(UserSettings.FindControl("user_Phone"), TextBox)
            Dim phone2 As TextBox = CType(UserSettings.FindControl("user_Phone2"), TextBox)

            'check if empty
            If firstName.Text.Trim = "" Then
                fnlbl.Text = "The first name needs to be filled"
                Exit Sub
            End If

            'check if empty
            If lastName.Text.Trim = "" Then
                fnlbl.Text = "The last name needs to be filled"
                Exit Sub
            End If
            'update the userInfo for this user
            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)
            'Add the newly create user to the Patron Role
            Roles.AddUserToRole(newUser.UserName, "r_patron")

            'Insert a new record into UserInfo
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
            Dim updateSQl As String = "Insert into [slpl_userInfo] ([UserID],[firstName],[lastName],[birthday],[address],[address2],[city],[state],[zipcode],[phone],[phone2]) values (@UserId,@firstName,@lastName,@birthday,@address,@address2,@city,@state,@zipcode,@phone,@phone2)"




            '@newUser,@firstName,@lastName,@birthday,@address,@city,@state,@zipcode,@email,@phone
            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()
                Dim myCommand As New SqlCommand(updateSQl, myConnection)
                myCommand.Parameters.Add(New SqlParameter("@state", state))
                myCommand.Parameters.AddWithValue("@firstName", firstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@lastName", lastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@city", city.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserId", newUserID)
                myCommand.Parameters.AddWithValue("@birthday", birthday.Text.Trim)
                myCommand.Parameters.AddWithValue("@address", address.Text.Trim)
                myCommand.Parameters.AddWithValue("@address2", address.Text.Trim)
                myCommand.Parameters.AddWithValue("@zipcode", zipCode.Text.Trim)
                myCommand.Parameters.AddWithValue("@phone", phone.Text.Trim)
                myCommand.Parameters.AddWithValue("@phone2", phone.Text.Trim)
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using


        End If
    End Sub

    Protected Sub ContinueButton_Click(ByVal sender As Object, e As System.EventArgs)
        Response.Redirect("ViewPatron.aspx")
    End Sub


    
End Class
