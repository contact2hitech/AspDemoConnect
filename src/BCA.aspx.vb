
Partial Class BCA
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click

        If Calendar1.Visible = True Then
            Calendar1.Visible = False
        Else
            Calendar1.Visible = True
        End If
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox1.Text = Calendar1.SelectedDate.ToLongDateString()
        Calendar1.Visible = False
    End Sub

    Protected Sub Page_Error(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Error
        'Response.Write("ERROR OCCURED")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("last server error is : ")
        Response.Write(Application("ErrorDetails"))
        Response.Write("end of last server error : ")

        Label1.Text = ConfigurationManager.ConnectionStrings("vicky").ConnectionString
        Dim i As Integer = 0
        For i = 0 To ConfigurationManager.ConnectionStrings.Count - 1
            Response.Write("CONN STR AT LOCATIOJN " & i & "<br>" & ConfigurationManager.ConnectionStrings(i).ConnectionString)
        Next
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        '        'On Error Resume Next
        '        Response.Write("<center><h1>JUMP </h1></center>")
        Err.Raise(11)

        '        Response.Write("<center> NORMAL FLOW</center>")
        '        ' Resume hpp
        '        Response.Write("<center>LINE 1</center>")
        'hpp:
        '        Response.Write("<center>JUMP</center>")
    End Sub
End Class
