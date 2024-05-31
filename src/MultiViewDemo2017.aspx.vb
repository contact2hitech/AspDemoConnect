
Partial Class MultiViewDemo2017
    Inherits System.Web.UI.Page

   
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        MultiView1.ActiveViewIndex += 1
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        MultiView1.ActiveViewIndex += 1
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        MultiView1.ActiveViewIndex += 1
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        mv2.ActiveViewIndex += 1
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        mv2.ActiveViewIndex -= 1
    End Sub
End Class
