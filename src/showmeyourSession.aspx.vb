
Partial Class showmeyourSession
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      


        'mylaebel1.Text = Session("TestUname")
        'mylaebel1.Text &= Session("TestUmob")
        'mylaebel1.Text &= Session("TestLtime")


        Response.Write("SESSION ID : " & Session.SessionID)
        Response.Write("<br>SESSION TIMEOUT : " & Session.Timeout)
        Response.Write("<br>SESSION ITEMS : " & Session.Count)
        Response.Write("<br>IS NEW SESSION : " & Session.IsNewSession)
        Response.Write("<br>IS COOKIELESS : " & Session.IsCookieless)
        Response.Write("<br>IS READ ONLY : " & Session.IsReadOnly)

        Dim i As Integer
        For i = 0 To Session.Count - 1
            Response.Write("<br>DATA NO " & i + 1)
            Response.Write(" Value : " & Session.Item(i))

        Next

    End Sub
End Class
