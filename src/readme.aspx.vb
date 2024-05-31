
Partial Class readme
    Inherits System.Web.UI.Page

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "DATA 1 IS : " & Server.UrlDecode(Request.QueryString("data1")) & "<br>"
        Label1.Text &= "DATA 2 IS :" & Server.UrlDecode(Request.QueryString("data2")) & "<br>"
        Label1.Text &= "DATA 3 IS :" & Request.QueryString("data3") & "<br>"
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Page.MasterPageFile = "MainMaster.master"
    End Sub
End Class
