
Partial Class WUCtest
    Inherits System.Web.UI.UserControl

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = "WELCOME " & TextBox1.Text
    End Sub
End Class
