
Partial Class MultiviewDemo2019
    Inherits System.Web.UI.Page

    Protected Sub btnnexv1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnnexv1.Click
        MultiView1.ActiveViewIndex += 1

    End Sub

    Protected Sub btnnextv2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnnextv2.Click
        MultiView1.ActiveViewIndex += 1
    End Sub

    Protected Sub btnnexv3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnnexv3.Click

        Dim vobj As New View
        Dim lblo As New Label
        lblo.Text = "OUTPUT IS ANANT S CHANCHAD"
        lblo.ForeColor = Drawing.Color.Red

        lblo.ID = "mycustomlbl"
        vobj.Controls.Add(lblo)
        MultiView1.Views.Add(vobj)
        MultiView1.ActiveViewIndex += 1
    End Sub

    Protected Sub btnprev3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnprev3.Click
        MultiView1.ActiveViewIndex -= 1
    End Sub

    Protected Sub btnprev2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnprev2.Click
        MultiView1.ActiveViewIndex -= 1
    End Sub
End Class
