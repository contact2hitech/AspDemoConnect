
Partial Class CookieDemo2017
    Inherits System.Web.UI.Page
    Protected Sub btnCookieSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCookieSave.Click
        Dim myobjname As New HttpCookie("TYBCA1")
        myobjname.Values.Add("colo", txtCookieData.Text)
        myobjname.Values.Add("name", "SUTEX BCA")
        myobjname.Values.Add("ltime", DateTime.Now.ToString("dd/MMM/yyyy hh:mm:ss"))
        myobjname.Values.Add("mypath", Request.Path)
        myobjname.Name = "ChangedName"
        myobjname.Expires = DateTime.Now.AddDays(2)
        Response.Cookies.Add(myobjname)
        Response.Write("COOKIE SAVED SUCCESSFULLY")
    End Sub



    Protected Sub btnDeleteCookie_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDeleteCookie.Click
        Dim myobjname As New HttpCookie("ChangedName")
        myobjname.Expires = DateTime.Now.AddDays(-2)
        Response.Cookies.Add(myobjname)
        Response.Write("COOKIE DELETE SUCCESSFULLY")

    End Sub

    Protected Sub btnReadCk_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReadCk.Click
        Dim obj As HttpCookie = Request.Cookies("changedname")
        Dim i As Integer = 0
        For i = 0 To obj.Values.Count - 1
            lblExp.Text &= "<br> KEY:" & obj.Name(i) & "    "
            lblExp.Text &= "DATA:" & obj.Values(i) & "<br>"
        Next
        



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim obj As HttpCookie = Request.Cookies("ChangedName")
        If obj IsNot Nothing Then
            Dim i As Integer = 0

            For i = 0 To obj.Values.Count - 1
                lblExp.Text &= "<br> KEY:" & obj.Values().ToString & " : "
                lblExp.Text &= "DATA:" & obj.Values(i) & "<br>"
            Next
        End If
        
    End Sub
End Class
