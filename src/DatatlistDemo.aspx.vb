
Partial Class DatatlistDemo
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        DataList2.SelectedIndex = TextBox1.Text
    End Sub

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Ruser") <> " " Then
            lblInfo.Text = "WELCOME DEAR " & Session("Ruser") & ". Welcome to my Site. You are Surfing Since " & Session("Ltime")
        End If
    End Sub
End Class
