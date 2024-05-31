
Partial Class ucInformationDemo
    Inherits System.Web.UI.UserControl

    Protected Sub btnucShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnucShow.Click
        lblucName.Text = txtucName.Text
    End Sub
End Class
