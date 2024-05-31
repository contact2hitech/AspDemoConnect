
Partial Class Testingchildnmaster
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Calendar2.SelectedDate = Today.AddDays(7)
    End Sub
End Class
