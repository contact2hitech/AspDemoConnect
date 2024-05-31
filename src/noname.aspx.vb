
Partial Class noname
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Title = System.Web.Configuration.WebConfigurationManager.AppSettings.Item("myname").ToString()
    End Sub
End Class
