
Partial Class ServerVsResponse
    Inherits System.Web.UI.Page

    Protected Sub btnResponse_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnResponse.Click
        Response.Redirect("http://172.30.58.223/phpmyadmin/")
    End Sub

    Protected Sub btnServer_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnServer.Click
        Server.Transfer("http://172.30.58.223/phpmyadmin/")
    End Sub
End Class
