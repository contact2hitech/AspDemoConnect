Partial Class DemoQuery
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim bgen As Boolean
        If radm.Checked = False And radf.Checked = False Then
            lblmessage.Text = "..... please select any option......... " & "<br>"

        Else
            If radm.Checked = True Then
                bgen = True
            Else
                bgen = False
            End If
            Response.Redirect("second.aspx?Name=" & TextBox1.Text & "&Gen=" & bgen & "&Age=" & txtage.Text)
        End If


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Response.Redirect("LoginDemo.aspx")
    End Sub
End Class
