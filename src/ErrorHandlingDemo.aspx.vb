
Partial Class ErrorHandlingDemo
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dim n1, n2 As Decimal
        'Dim n3 As Decimal
        'Try
        ' Throw New ArgumentException("UNKNOWN Exception Occured")
        '    Throw New System.IO.IOException
        '    n1 = 1234445545
        '    n2 = 0
        '    n3 = n1 / n2

        '    MsgBox("RESULT : " & n3)

        'Catch ex As OverflowException
        '    MsgBox("USE VALUES BETWEEN o to  100000 " & ex.ToString)
        'Catch ex As System.ArgumentException
        '    MsgBox("ERROR CODE 007")

        'Catch ex1 As DivideByZeroException
        '    MsgBox("PLEASE CHECK UR INPUT . MAKE SURE NON ZEROS" & ex1.ToString)
        'Catch ex As System.Exception
        '    MsgBox("UNKNOWN ERROR " & ex.ToString)
        'End Try

        '        Dim n1, n2 As Integer
        '        'Dim n1, n2 As Decimal

        '        On Error GoTo my_err
        '        n1 = 12
        '        n2 = 5

        '        Err.Raise(707, "HPP", "MY CUSTOM ERROR", , )

        '        ' Throw New System.IO.IOException
        '        lbl1.Text = n1 / n2
        '        Exit Sub
        'my_err:
        '        MsgBox(Err.Number & Err.Description)
        '        lbl1.Text = "ERR NO: " & Err.Number & " of type: " & Err.Description & " occured on line no: " & Err.Erl.ToString & " by:  " & Err.Source.ToString

        '    Throw New DivideByZeroException
        '        Dim n1, n2 As Integer
        '        On Error GoTo Myerror
        '        n1 = 12
        '        n2 = 0
        '        Dim str As String = n1 Mod n2
        '        Exit Sub
        'Myerror:
        '        lbl1.Text = ("FOLLOWING ERROR OCCURED : " & Err.Number & " & DESCRIPTION " & Err.Description)
        Throw (New System.OverflowException())
    End Sub

    Protected Sub Page_Error(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Error
        Response.Write("ERROR HANDLED")

        'Pending \Demo
    End Sub
    'Protected Sub Page_Error(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Error
    '    'MsgBox("ERROR OCCURED at page level")
    '    '  Response.Write("ERROR OCCURED at page level")
    '    Dim objErr As Exception = Server.GetLastError().GetBaseException()
    '    Dim err As String = "<b>Error Caught in Page_Error event</b><hr><br>" & _
    '        "<br><b>Error in: </b>" & Request.Url.ToString() & _
    '        "<br><b>Error Message: </b>" & objErr.Message.ToString() & _
    '        "<br><b>Stack Trace:</b><br>" & _
    '        objErr.StackTrace.ToString() & "</b><hr><br>"
    '    ' Dim err As String = "TEST"
    '    Response.Write(err)
    '    Server.ClearError()
    'End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl1.Text = Application("name")
        'Try
        '    Dim i As Integer
        '    ' For i = 1 To 20
        '    Dim n1, n2, n3 As Integer
        '    'On Error GoTo hpp
        '    n1 = 10
        '    n2 = 10
        '    n3 = n1 Mod n2
        '    'Response.Write(n1 & n2)
        '    'Err.Raise(i, "SAMPLES")
        '    ' Dim str As String = Server.MapPath(Request.Path)
        '    'Err.Raise(1111, str, "CUSTOM ERR MESSAGE : MY PAGE ERROR")
        '    Throw New ApplicationException("hello from hpp")
        '    ' Next
        '    ' Throw New ArgumentException("UNKNOWN Exception Occured")
        '    'hpp:
        '    lbl1.Text &= "code block : " & Err.Number & " & DESCRIPTION :  " & Err.Description & "ERROR SOURCE : " & Err.Source & "<br>"
        '    '        Resume Next
        'Catch ex As Exception
        '    lbl1.Text &= "ERROR : " & Err.Number & " & DESCRIPTION :  " & Err.Description & "ERROR SOURCE : " & Err.Source & "<br>"
        'Finally
        '    lbl1.Text &= "<br> hello all"
        'End Try
    End Sub
End Class
