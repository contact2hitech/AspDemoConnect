
Partial Class errorhandling2020
    Inherits System.Web.UI.Page

    Protected Sub btnmsgbox_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmsgbox.Click


        Err.Raise(11)
        
    End Sub
End Class
