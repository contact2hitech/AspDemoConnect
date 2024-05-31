
Partial Class GeneralErrorPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim errqry As String
            Dim str As String
            'Server.GetLastError.ToString()
            str = Request.QueryString("aspxerrorpath")
            Label1.Text = "OPPS...!!!! You Came here because of Following Error."
            Label1.Text &= " or requested bad page :<br> " & str & "<br><br>"
            Label1.Text &= " Click to Go Back :<br><a href='" & str & "' >" & str & "<a/><br><br>"
            Label1.Text &= "ERROR NO :  " & Application("Error")
            ' Label1.Text &= " <br>ERROR Detail Inner :  " & Application("ErrorDetailsInner").ToString
            Label1.Text &= " <br>ERROR General :  " & Application("ErrorMessage").ToString
            'Label1.Text &= " <br>ERROR in Detail :  " & Application("ErrorInDetails").ToString
            Label1.Text &= " <br>ERROR Inner :  " & Application("ErrorDetailsInner").ToString
            Server.ClearError()
            'code to be cleaned 
            Dim clearerror As String = Application("ErrorMessage")
            clearerror = clearerror.Replace("'", " ")
            clearerror = clearerror.Replace("(", ".")
            clearerror = clearerror.Replace(")", ".")
            'Label1.Text = "NEW QUERY " & clearerror
            Dim myobj As New myconnection
            If Session("stuname") = "" Then
                Profile.STUDENT_DETAILS.name = ""
            End If
            If Profile.STUDENT_DETAILS.name = "" Then

                errqry = "INSERT INTO [Demos].[dbo].[err_data] ([err_code],[err_message],[err_details],[err_source],[err_user],[err_userid],[err_date],[err_time])    VALUES ('" & Application("Error") & "'  ,' " & Application("ErrorDetailsInner").ToString & "' ,'" & clearerror & "' ,'" & str & "' ,'" & Profile.UserName & "','Is Anonymous' ,CONVERT (varchar, GETDATE(),106),CONVERT (varchar, GETDATE(),108))"
                Session.Abandon()
            Else
                errqry = "INSERT INTO [Demos].[dbo].[err_data] ([err_code],[err_message],[err_details],[err_source],[err_user],[err_userid],[err_date],[err_time])    VALUES ('" & Application("Error") & "'  ,' " & Application("ErrorDetailsInner").ToString & "' ,'" & clearerror & "' ,'" & str & "' ,'" & Profile.STUDENT_DETAILS.name & "','" & Session("studid") & "' ,CONVERT (varchar, GETDATE(),106),CONVERT (varchar, GETDATE(),108))"
            End If

            ' Label1.Text &= "<br>OLD QUERY " & errqry
            Dim cou As Integer = 0
            cou = myobj.executedata(errqry)
            If cou > 0 Then
                Label1.Text &= " <br><h3>Your Error has been logged :  <h3>"
            End If
            'Application("ErrorDetailsInner") = ""
            'Application("ErrorDetails") = ""
            'Application("ErrorDetails") = ""
        End If
        
    End Sub
End Class
