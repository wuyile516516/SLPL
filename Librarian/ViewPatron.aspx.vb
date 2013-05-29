
Partial Class Librarian_ViewCustomer
    Inherits System.Web.UI.Page

    Protected Sub SearchBTN_Click(sender As Object, e As System.EventArgs) Handles SearchBTN.Click
        Dim Keyword As String
        Dim isnum As Boolean
        Dim searchword As String

        Keyword = SearchTB.Text
        'Check to see if the text entered are all numbers


        'Check to see if the keyword is number
        isnum = IsNumeric(Keyword)
        'Search with text and in book

        If isnum = False Then
            searchword = "SELECT * FROM slpl_userInfo WHERE ( firstName Like '%" + Keyword + "%') OR (lastName Like '%" + Keyword + "%') OR (address like '%" + Keyword + "%') OR (city like '%" + Keyword + "%') OR (state like '%" + Keyword + "%')"
            SqlDataSource1.SelectCommand = searchword
            'Search by numeric values in book DB
        ElseIf isnum = True Then
            searchword = "SELECT * FROM slpl_userInfo WHERE ( zipcode Like '%" + Keyword + "%') OR (phone Like '%" + Keyword + "%') "
            SqlDataSource1.SelectCommand = searchword
        End If
    End Sub
End Class
