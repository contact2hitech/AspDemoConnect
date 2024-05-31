
Partial Class wucHome
    Inherits System.Web.UI.UserControl

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("http://192.168.10.73")
    End Sub
End Class
