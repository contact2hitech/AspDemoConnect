
Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        'ddldept.SelectedValue.ToString
        Response.Redirect("DemoQueryString2.aspx?dept=" & Server.UrlEncode(ddldept.SelectedValue.ToString))
        ' Response.Redirect("DemoQueryString2.aspx?dept=" & Server.UrlEncode(ddldept.SelectedValue.ToString))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim uname, umob As String
        uname = Session("Uname")
        umob = Session("Umob")
        lblSession.Text = " dear " & uname & " . your mobile no is " & umob & " SESS ID IS: " & Session.SessionID
        '  lblprofile.Text = "HELLO " & Profile.fname

    End Sub

    Protected Sub Button4_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("GridviewDemo.aspx?Sid=" & TextBox1.Text)
    End Sub
End Class
