
Partial Class FYBCA
    Inherits System.Web.UI.Page

    Protected Sub TreeView2_SelectedNodeChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TreeView2.SelectedNodeChanged

        Response.Write(TreeView2.SelectedValue.ToString)
    End Sub

    Protected Sub TreeView1_SelectedNodeChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TreeView1.SelectedNodeChanged

    End Sub
End Class
