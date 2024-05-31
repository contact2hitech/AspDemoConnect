
Partial Class ClientSideStateManagement
    Inherits System.Web.UI.Page
    Dim no As Integer

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        HiddenField1.Value = TextBox1.Text
        lblAns.Text = HiddenField1.Value

    End Sub

    Protected Sub btnStore_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnStore.Click
        ViewState("name") = txtno1.Text
    End Sub

    Protected Sub btnTransfer_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnTransfer.Click
        txtno2.Text = ViewState("name")
    End Sub
End Class
