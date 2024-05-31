
Partial Class GreetingDemo
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim strgreet As String = ""

        If System.DateTime.Now.Hour > 6 And System.DateTime.Now.Hour < 12 Then
            Label2.Text = "HELLO DEAR " & TextBox1.Text & " wish you a Happy Good Moring"
        ElseIf System.DateTime.Now.Hour >= 12 And System.DateTime.Now.Hour < 18 Then
            Label2.Text = "HELLO DEAR " & TextBox1.Text & " wish you a Happy Good AFTERNOON"
        ElseIf System.DateTime.Now.Hour >= 18 And System.DateTime.Now.Hour < 24 Then
            Label2.Text = "HELLO DEAR " & TextBox1.Text & " wish you a Happy Good NIGHT"
        ElseIf System.DateTime.Now.Hour >= 24 And System.DateTime.Now.Hour < 6 Then
            Label2.Text = "HELLO DEAR " & TextBox1.Text & " ITS TOO LATE GO TO SLEEP"
        End If
    End Sub
End Class
