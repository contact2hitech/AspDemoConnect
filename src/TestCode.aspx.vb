
Partial Class TestCode
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Title = "TESTING PAGE"
        Response.Write("ROLL NO : " & CStr(Session("student_id")))
        Response.Write("ROLL NO : " & Session("User"))
        Dim i As Integer
        For i = 0 To Session.Count - 1
            Response.Write("ITEM :" & Session.Item(i).ToString)
        Next

    End Sub
End Class
