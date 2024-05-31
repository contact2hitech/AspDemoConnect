
Partial Class CrossPagePosting2014
    Inherits System.Web.UI.Page

    Protected Sub btnPost_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPost.Click
        Response.Redirect("PostedPage2014.aspx")
    End Sub
End Class
