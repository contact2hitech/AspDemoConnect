
Partial Class CookieDemo
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ck As New HttpCookie("SAMPLE123")
        ck.Values.Add("Name", txtname.Text)
        ck.Values.Add("Mobile", txtmobile.Text)
        ck.Values.Add("Time", DateTime.Now.ToString)
        ck.Values.Add("colo", "Red")
        ck.Expires = DateTime.Now.AddHours(7)
        Response.Cookies.Add(ck)
        lblwelcome.Text = "Cookie successfully saved"
        Response.Write("        lblwelcome.Text =Cookie successfully saved")
        '        Response.Redirect("CookieDemo.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim CK As HttpCookie = Request.Cookies("SAMPLE")
            Dim r As New Drawing.Color
            If CK IsNot Nothing Then
                Dim str1, str2, str3 As String
                str1 = CK.Values("Name")
                str2 = CK.Values("Mobile")
                str3 = CK.Values("Time")
                r = Drawing.Color.FromName(CK.Values("colo"))
                lblwelcome.BackColor = r
                lblwelcome.Text = "GREETINGS " & str1 & " how are you. iS YOUR cELL NO  " & str2 & "<br> YOU VISITED last time on " & str3

            End If
        End If

    End Sub

    Protected Sub btnReadCookie_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReadCookie.Click
        Dim CK As HttpCookie = Request.Cookies("SAMPLE123")
        Dim r As New Drawing.Color
        If CK IsNot Nothing Then
            Dim str1, str2, str3 As String
            str1 = CK.Values("Name")
            str2 = CK.Values("Mobile")
            str3 = CK.Values("Time")
            r = Drawing.Color.FromName(CK.Values("colo"))
            lblwelcome.BackColor = r
            lblwelcome.Text = "GREETINGS " & str1 & " how are you. iS YOUR cELL NO  " & str2 & "<br> YOU VISITED last time on " & str3
            Response.Write("STR 1 VALUE " & str1 & "  str 2  avalue " & str2 & "   STR3 value " & str3)
        End If
    End Sub

    Protected Sub btnDeleteCookie_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDeleteCookie.Click
        Dim ck As New HttpCookie("SAMPLE123")
        ck.Expires = DateTime.Now.AddDays(-1)
        Response.Cookies.Add(ck)
        Response.Write("COOKIE DELETED...!")
    End Sub

    Protected Sub btnCookieDetails_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCookieDetails.Click
        Dim CK As HttpCookie = Request.Cookies("SAMPLE123")
        Response.Write("TOTAL VALUSE IN COOKIE" & CK.Values.Count)
        Dim i As Integer = 0
        For i = 0 To CK.Values.Count - 1
            Response.Write("KEY NO " & i & ":  " & CK.Values(i).ToString & "<br>")

        Next


    End Sub
End Class
