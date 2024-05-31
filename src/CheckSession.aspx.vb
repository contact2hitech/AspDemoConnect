
Partial Class CheckSession
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("WELCOME USER :" & Session("TestUname") & " YOUR MOBILE NO IS :  " & Session("TestUmob") & " YOU ARE LOGIN SINCE : " & Session("TestLtime"))
    End Sub
End Class
