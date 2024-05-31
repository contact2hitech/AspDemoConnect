
Partial Class oopsimplementation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim myobj As New myconnection
        GridView1.DataSource = myobj.getdata("select * from studinfo")
        GridView1.DataBind()
    End Sub
End Class
