
Partial Class birthdatepicker
    Inherits System.Web.UI.UserControl

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        If TextBox1.Text = "" Then
            Calendar1.Visible = False
        Else
            Calendar1.Visible = True
        End If
    End Sub
End Class
