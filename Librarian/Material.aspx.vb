
Partial Class Default2
    Inherits System.Web.UI.Page


    Protected Sub GridView1_RowDeleted(sender As Object, e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        Dim delBook As String = e.Values("title").ToString
        Dim delCalNum As String = e.Values("callNumber").ToString

        Response.Write("The book")
        Response.Write("<span class=deletedhighlight>")
        Response.Write(delBook)
        Response.Write(" <span>with call number")
        Response.Write(delCalNum)
        Response.Write("has been deleted from the database.")
        Response.AddHeader("REFRESH", "3;URL=./Material.aspx")

    End Sub

    Protected Sub GridView2_RowDeleted(sender As Object, e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView2.RowDeleted
        Dim delDVD As String = e.Values("title").ToString
        Dim delCalNum As String = e.Values("callNumber").ToString

        Response.Write("The book")
        Response.Write("<span class=deletedhighlight>")
        Response.Write(delDVD)
        Response.Write(" <span>with call number")
        Response.Write(delCalNum)
        Response.Write("has been deleted from the database.")
        Response.AddHeader("REFRESH", "3;URL=./Material.aspx")

    End Sub

    Protected Sub GridView3_RowDeleted(sender As Object, e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView3.RowDeleted
        Dim delGame As String = e.Values("title").ToString
        Dim delCalNum As String = e.Values("callNumber").ToString

        Response.Write("The book")
        Response.Write("<span class=deletedhighlight>")
        Response.Write(delGame)
        Response.Write(" <span>with call number")
        Response.Write(delCalNum)
        Response.Write("has been deleted from the database.")
        Response.AddHeader("REFRESH", "3;URL=./Material.aspx")
    End Sub

    Protected Sub GridView1_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated
        Response.Redirect("Material.aspx")

    End Sub

    Protected Sub GridView2_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView2.RowUpdated
        Response.Redirect("Material.aspx")
    End Sub

    Protected Sub GridView3_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView3.RowUpdated
        Response.Redirect("Material.aspx")
    End Sub

  

    Protected Sub allMaterial_Click(sender As Object, e As System.EventArgs) Handles allMaterial.Click
        'make the divs all visable at the first
        bookDiv.Visible = True
        DVDdiv.Visible = True
        gameDiv.Visible = True
        'show all the materials
        SqlDataSource1.SelectCommand = "SELECT * FROM slpl_material_book"
        SqlDataSource2.SelectCommand = "SELECT * FROM slpl_material_DVD"
        SqlDataSource3.SelectCommand = "SELECT * FROM slpl_material_game"
    End Sub




    Protected Sub SearchBTN_Click(sender As Object, e As System.EventArgs) Handles SearchBTN.Click
        Dim Keyword As String
        Dim type As String
        Dim isnum As Boolean
        Dim searchword As String

        Keyword = SearchTB.Text
        type = SearchDropDown.SelectedValue
        'Check to see if the text entered are all numbers

        'make the divs all visable at the first
        bookDiv.Visible = True
        DVDdiv.Visible = True
        gameDiv.Visible = True

        'Check to see if the keyword is number
        isnum = IsNumeric(Keyword)
        'Search with text and in book

        If isnum = False And type = "Book" Then
            searchword = "SELECT * FROM slpl_material_book WHERE ( title Like '%" + Keyword + "%') OR (author Like '%" + Keyword + "%') OR (publisher like '%" + Keyword + "%') OR (callNumber like '%" + Keyword + "%')"
            SqlDataSource1.SelectCommand = searchword
            'make the table 2 or 3 invisiable
            DVDdiv.Visible = False
            gameDiv.Visible = False
            'Search by numeric values in book DB
        ElseIf isnum = True And type = "Book" Then
            searchword = "SELECT * FROM slpl_material_book WHERE ( bookID Like '%" + Keyword + "%') OR (ISBN Like '%" + Keyword + "%') "
            SqlDataSource1.SelectCommand = searchword
            'make the table 2 or 3 invisiable
            DVDdiv.Visible = False
            gameDiv.Visible = False

            'Search by textvalue in DVD DB
        ElseIf isnum = False And type = "DVD" Then
            searchword = "SELECT * FROM slpl_material_DVD WHERE ( title Like '%" + Keyword + "%') OR (author Like '%" + Keyword + "%') OR (publisher like '%" + Keyword + "%') OR (callNumber like '%" + Keyword + "%')"
            SqlDataSource2.SelectCommand = searchword
            'make the table 1 or 3 invisiable
            bookDiv.Visible = False
            gameDiv.Visible = False
            'Search by numeric value in DVD DB
        ElseIf isnum = True And type = "DVD" Then
            searchword = "SELECT * FROM slpl_material_DVD WHERE ( DVDID Like '%" + Keyword + "%') OR (ISBN Like '%" + Keyword + "%')"
            SqlDataSource2.SelectCommand = searchword
            'make the table 1 or 3 invisiable
            bookDiv.Visible = False
            gameDiv.Visible = False
            'Search by textvalue in game DB
        ElseIf isnum = False And type = "Game" Then
            searchword = "SELECT * FROM slpl_material_game WHERE ( title Like '%" + Keyword + "%') OR (publisher like '%" + Keyword + "%') OR (callNumber like '%" + Keyword + "%')"
            SqlDataSource3.SelectCommand = searchword
            'make the table 1 or 2 invisiable
            bookDiv.Visible = False
            DVDdiv.Visible = False
            'Search by  numericvalue in game DB
        ElseIf isnum = True And type = "Game" Then
            searchword = "SELECT * FROM slpl_material_game WHERE ( gameID Like '%" + Keyword + "%') OR (ISBN Like '%" + Keyword + "%')"
            SqlDataSource3.SelectCommand = searchword
            'make the table 1 or 2 invisiable
            bookDiv.Visible = False
            DVDdiv.Visible = False
        End If

    End Sub
End Class
