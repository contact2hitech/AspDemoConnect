
Partial Class HiddenfieldDemo
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        HiddenField1.Value = TextBox1.Text
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Label2.Text = HiddenField1.Value
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        ViewState("EmailId") = TextBox2.Text
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        lblViewstate.Text = ViewState("EmailId")
    End Sub
End Class
