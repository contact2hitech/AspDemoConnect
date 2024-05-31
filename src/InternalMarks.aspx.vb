
Partial Class InternalMarks
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") <> "abc@abc.com" Then
            Response.Redirect("LoginDemo.aspx")
        Else
            Label1.Text = " YOU HAVE HACKED MY MARKS"
        End If
    End Sub
End Class
