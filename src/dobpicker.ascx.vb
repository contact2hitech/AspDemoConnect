
Partial Class dobpicker
    Inherits System.Web.UI.UserControl

   
    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate
        Calendar1.Visible = False
    End Sub

    
    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        Calendar1.Visible = True
    End Sub
End Class
