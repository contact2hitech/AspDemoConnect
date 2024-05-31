Partial Class BBA
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else

            Dim var As DateTime = DateTime.Now
            Dim var1 As DateTime = Session("Ltime")
            Dim tp As TimeSpan = var1.Subtract(var)
            Dim res As String

            If Math.Abs(tp.Hours) > 0 Then
                res = tp.Hours & " Hours " & Math.Abs(tp.Minutes) & " Minutes " & Math.Abs(tp.Seconds) & " Seconds"
                lblLogin.Text = "WELCOME {" & Session("User") & "} you are login since : " & res
            ElseIf Math.Abs(tp.Minutes) > 0 Then
                res = Math.Abs(tp.Minutes) & " Minutes " & Math.Abs(tp.Seconds) & " Seconds"
                lblLogin.Text = "WELCOME {" & Session("User") & "} you are login since : " & res
            ElseIf Math.Abs(tp.Seconds) > 0 Then
                res = Math.Abs(tp.Seconds) & " Seconds"
                lblLogin.Text = "WELCOME {" & Session("User") & "} you are login since : " & res
            End If


            Label1.Text = "WELCOME " & Session("User")
            Label1.Text &= "<br>SESSION ID " & Session.SessionID
            Label1.Text &= "<br>IS NEW SESSION" & Session.IsNewSession
            Label1.Text &= "<br>IS COOKIELESS" & Session.IsCookieless
            '  Session.Timeout = 11
            Label1.Text &= "<br>TIME LEFT" & Session.Timeout
            Label1.Text &= "<br>TOTAL OBJECTS" & Session.Count
            Label1.Text &= "<br>OBJECT 1: " & Session.Keys.Item(0)
            Label1.Text &= "<br>VALUE : " & Session.Item(0).ToString
            Label1.Text &= "<br>OBJECT 2: " & Session.Keys.Item(1)
            Label1.Text &= "<br>VALUE : " & Session.Item(1).ToString


        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session.Abandon()
        Response.Redirect("LoginDemo.aspx")
    End Sub
End Class
