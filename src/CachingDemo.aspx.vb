
Partial Class CachingDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Page.IsPostBack Then
        Cache.Insert("StudName", "Hello Dear")
        Label1.Text = "Reading Data From Cache : " & Cache.Item("StudName")
        'Else
        'Read Data From Cache
        'Label1.Text = "Reading Data From Cache : " & Cache("StudName").ToString
        'End If


    End Sub
End Class
