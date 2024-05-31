
Partial Class SampleForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Form2.Visible = False
        Me.form1.Visible = True
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Me.form1.Visible = True Then
            Me.form1.Visible = False
            Me.Form2.Visible = True
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If Me.Form2.Visible = True Then
            Me.Form2.Visible = False
            Me.form1.Visible = True

        End If

    End Sub
End Class
