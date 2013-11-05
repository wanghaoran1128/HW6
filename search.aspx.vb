
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbSearch1_TextChanged(sender As Object, e As EventArgs) Handles tbSearch1.TextChanged

        Dim searchword As String

        searchword = "select * From bayern where (LastName like '%" + tbSearch1.Text.ToString() + "%') OR (FirstName like '%" + tbSearch1.Text.ToString() + "%') OR (Hobbies like '%" + tbSearch1.Text.ToString() + "%') OR (Country like '%" + tbSearch1.Text.ToString() + "%') OR (Position like '%" + tbSearch1.Text.ToString() + "%') OR (Education like '%" + tbSearch1.Text.ToString() + "%') OR (Marriage like '%" + tbSearch1.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword

    End Sub

    Protected Sub tbSearch2_TextChanged(sender As Object, e As EventArgs) Handles tbSearch2.TextChanged

        Dim searchword As String
        searchword = "select * From bayern where (LastName like '%" + tbSearch2.Text.ToString() + "%') OR (FirstName like '%" + tbSearch2.Text.ToString() + "%') OR (Hobbies like '%" + tbSearch2.Text.ToString() + "%') OR (Country like '%" + tbSearch2.Text.ToString() + "%') OR (Position like '%" + tbSearch2.Text.ToString() + "%') OR (Education like '%" + tbSearch2.Text.ToString() + "%') OR (Marriage like '%" + tbSearch2.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword

    End Sub
End Class
