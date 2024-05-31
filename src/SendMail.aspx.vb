Imports System.Net
Partial Class SendMail
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        ' smtp object
        Dim strusername As String = "ajaydesai157@gmail.com"
        Dim strpass As String = "9824871228"

        Dim myemail As New System.Net.Mail.SmtpClient
        myemail.Credentials = New NetworkCredential(strusername, strpass)
        myemail.DeliveryMethod = Mail.SmtpDeliveryMethod.Network
        myemail.EnableSsl = True
        myemail.Timeout = 20000
        myemail.Port = 587
        myemail.Host = "smtp.gmail.com"

        Try
            DisplayMessage.Visible = True
            myemail.Send(strusername, YourEmail.Text, YourSubject.Text, Comments.Text)
            DisplayMessage.Text = "EMAIL SEND SUCCESSFULLY"
            'clear all
        Catch ex As Exception
            DisplayMessage.Text = ex.ToString
        End Try

    End Sub
    'dEPRECIATEDD cODE oct 2016

    '   ' ''Protected Sub SendMail()
    '   ' ''    ' Gmail Address from where you send the mail
    '   ' ''    Dim fromAddress As String = "hitesh123.mk@gmail.com"
    '   ' ''    ' any address where the email will be sending
    '   ' ''    Dim toAddress As String = YourEmail.Text.ToString()
    '   ' ''    'Password of your gmail address
    '   ' ''    Const fromPassword As String = "8866248218"
    '   ' ''    ' Passing the values and make a email formate to display"
    '   ' ''    Dim subject As String = YourSubject.Text.ToString()
    '   ' ''    Dim body As String = "From: " + YourName.Text + vbLf
    '   ' ''    body += "Email: " + YourEmail.Text + vbLf
    '   ' ''    body += "Subject: " + YourSubject.Text + vbLf
    '   ' ''    body += "Question: " & vbLf + Comments.Text + vbLf
    '   ' ''    ' smtp settings
    '   ' ''    ' Dim tybca2 As New Mail.SmtpClient()
    '   ' ''    'temp code

    '   ' ''    Dim Mail As New System.Net.Mail.SmtpClient()
    '   ' ''    Mail.Host = ConfigurationManager.AppSettings("SMTPServer").ToString()


    '   ' ''    Dim username As String = Nothing
    '   ' ''    Dim Password As String = Nothing
    '   ' ''    If ConfigurationManager.AppSettings("UseDefaultCredentials") + "" = "false" Then
    '   ' ''        Mail.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network
    '   ' ''        username = ConfigurationManager.AppSettings("MailUserName")
    '   ' ''        Password = ConfigurationManager.AppSettings("MailPassword")
    '   ' ''        Dim basicAuthenticationInfo As New System.Net.NetworkCredential(username, Password)
    '   ' ''        If (ConfigurationManager.AppSettings("MailPort") IsNot Nothing) AndAlso (IsNumeric(ConfigurationManager.AppSettings("MailPort"))) Then
    '   ' ''            Mail.Port = Convert.ToInt16(ConfigurationManager.AppSettings("MailPort"))
    '   ' ''        End If
    '   ' ''        Mail.UseDefaultCredentials = False
    '   ' ''        Mail.Credentials = basicAuthenticationInfo
    '   ' ''        If ConfigurationManager.AppSettings("EnableSsl") = "True" Then
    '   ' ''            Mail.EnableSsl = True

    '   ' ''        End If
    '   ' ''    End If
    '   ' ''    Dim myMail As New System.Net.Mail.MailMessage()
    '   ' ''    Dim strsubject As String = ""
    '   ' ''    myMail.Subject = strSubject
    '   ' ''    Dim strFileName As String = FileUpload1.FileName
    '   ' ''    FileUpload1.PostedFile.SaveAs(Server.MapPath(strFileName))
    '   ' ''    Dim attach As New System.Net.Mail.Attachment(Server.MapPath(strFileName))
    '   ' ''    myMail.Attachments.Add(attach)

    '   ' ''    myMail.From = New System.Net.Mail.MailAddress(fromAddress, YourName.Text)
    '   ' ''    myMail.[To].Add(New System.Net.Mail.MailAddress(toAddress))

    '   ' ''    myMail.IsBodyHtml = True
    '   ' ''    myMail.Body = body


    '   ' ''    Mail.Send(myMail)


    '   'code ends

    '   'Dim tybca2 As New System.Net.Mail.MailMessage()
    '   'Dim strFileName As String = FileUpload1.FileName
    '   'FileUpload1.PostedFile.SaveAs(Server.MapPath(strFileName))
    '   'Dim attach As New System.Net.Mail.Attachment(Server.MapPath(strFileName))



    '   'If True Then


    '   '    tybca2.Host = "smtp.gmail.com"
    '   '    tybca2.Port = 465
    '   '    tybca2.EnableSsl = True
    '   '    tybca2.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network
    '   '    tybca2.Credentials = New NetworkCredential(fromAddress, fromPassword)
    '   '    tybca2.Timeout = 20000
    '   'End If
    '   '' Passing values to smtp object
    '   'tybca2.Send(fromAddress, toAddress, subject, body)
    '   'End Sub

    '   Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
    '       'Try
    '       '    'here on button click what will done  
    '       '    DisplayMessage.Visible = True
    '       '    SendMail()

    '       '    DisplayMessage.Text = "MAIL SEND SUCCESSFULLY"
    '       '    YourSubject.Text = ""
    '       '    YourEmail.Text = ""
    '       '    YourName.Text = ""
    '       '    Comments.Text = ""
    '       'Catch generatedExceptionName As Exception
    '       '    DisplayMessage.Text = generatedExceptionName.ToString
    '       'End Try
    '       sendEmail(YourSubject.Text, "test@test.com", YourEmail.Text, Comments.Text, "ccEmail@email.com", "ccEmail@email.com", "TESTING")
    '   End Sub
    '   Public Shared Function sendEmail(ByVal strSubject As String, ByVal strFrom As String, ByVal strTo As String, ByVal strBody As String, ByVal strCc As String, ByVal strBcc As String, _
    'ByVal displayName As String) As Boolean
    '       Dim Mail As New System.Net.Mail.SmtpClient()
    '       Mail.Host = ConfigurationManager.AppSettings("SMTPServer").ToString()


    '       Dim username As String = Nothing
    '       Dim Password As String = Nothing
    '       If ConfigurationManager.AppSettings("UseDefaultCredentials") + "" = "false" Then
    '           Mail.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network
    '           username = ConfigurationManager.AppSettings("MailUserName")
    '           Password = ConfigurationManager.AppSettings("MailPassword")
    '           Dim basicAuthenticationInfo As New System.Net.NetworkCredential(username, Password)
    '           If (ConfigurationManager.AppSettings("MailPort") IsNot Nothing) AndAlso (IsNumeric(ConfigurationManager.AppSettings("MailPort"))) Then
    '               Mail.Port = Convert.ToInt16(ConfigurationManager.AppSettings("MailPort"))
    '           End If
    '           Mail.UseDefaultCredentials = False
    '           Mail.Credentials = basicAuthenticationInfo
    '           If ConfigurationManager.AppSettings("EnableSsl") = "True" Then
    '               Mail.EnableSsl = True

    '           End If
    '       End If

    '       Dim myMail As New System.Net.Mail.MailMessage()
    '       myMail.Subject = strSubject
    '       'Dim strFileName As String = FileUpload1.FileName
    '       ' FileUpload1.PostedFile.SaveAs(Server.MapPath(strFileName))
    '       'Dim attach As New System.Net.Mail.Attachment(Server.MapPath(strFileName))
    '       ' myMail.Attachments.Add(attach)

    '       myMail.From = New System.Net.Mail.MailAddress(strFrom, displayName)
    '       myMail.[To].Add(New System.Net.Mail.MailAddress(strTo))

    '       myMail.IsBodyHtml = True
    '       myMail.Body = strBody
    '       Try
    '           Mail.Send(myMail)
    '           Return True
    '       Catch ex As Exception
    '           ex.Message.ToString()
    '           Return False
    '       End Try
    '   End Function




End Class
