
Partial Class deleteme
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("readme.aspx?data1=" & Server.UrlEncode(TextBox1.Text) & "&data2=" & Server.UrlEncode(DateTime.Now) & "&data3=" & "TYBCA2 I am roll no 9 ")
        
    End Sub
End Class
