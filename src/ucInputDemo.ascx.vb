
Partial Class ucInputDemo
    Inherits System.Web.UI.UserControl

    Protected Sub btnucshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnucshow.Click
        lblucname.Text = txtucname.Text
    End Sub
End Class
