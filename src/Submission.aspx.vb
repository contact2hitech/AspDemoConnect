Imports System.IO
Imports System.Drawing
Partial Class Submission
    Inherits System.Web.UI.Page
    Public total As Integer = 0
    Dim TotalSize As Long = 0
   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '   Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('LATE SUBMISSION NOT ALLOWED  !!!')</SCRIPT>")
        'If Session("User") = "" Then
        '    Response.Redirect("LoginDemo.aspx")
        'Else
        '    lblSubmission.Text = "Welcome User: " & Session("User") & "<br>"
        '    lblSubmission.Text &= "Submission TY1: 14/10/2014 <br>"
        '    lblSubmission.Text &= "Certification TY1: 14/11/2014 <br>"
        '    lblSubmission.Text &= "Submission TY2: 13/10/2014 <br>"
        '    lblSubmission.Text &= "Certification TY2: 13/11/2014 <br>"
        '    lblSubmission.Text &= "Submission Status: <br>Coming Soon...!!!!"
        'End If
        If Not IsPostBack Then
            Dim filePaths() As String = Directory.GetFiles(Server.MapPath("~/ASP_NET_Submission_2021/"))
            Dim files As List(Of ListItem) = New List(Of ListItem)
            For Each filePath As String In filePaths
                files.Add(New ListItem(Path.GetFileName(filePath), "ASP.NET Upload"))
            Next
            '            GridView1.DataSource = files
            '           GridView1.DataBind()
            DataList1.DataSource = files
            DataList1.DataBind()
            'RECENT FILE LIST HIDDEN

            lblrecentuploads.Text = "<b>Last File Submitted at : </b>" & Directory.GetLastWriteTime(Server.MapPath("~/ASP_NET_Submission_2021/")).ToString("dd/MMM/yyyy hh:mm:ss tt")
            lblrecentuploads.Text &= " <b>ASP.NET Submissions : </b>" & files.Count & "<br>"
            'for FYBCA 
            Dim filePaths1() As String = Directory.GetFiles(Server.MapPath("~/405_MAD_SUBMISSION_2022/"))
            Dim files1 As List(Of ListItem) = New List(Of ListItem)
            For Each filePath As String In filePaths1
                files1.Add(New ListItem(Path.GetFileName(filePath), "SYBCA Mobile Upload"))
            Next
            '            GridView1.DataSource = files
            '           GridView1.DataBind()
            DataList2.DataSource = files1
            DataList2.DataBind()
            lblrecentuploads.Text &= "<b>Last File Submitted at : </b>" & Directory.GetLastWriteTime(Server.MapPath("~/405_MAD_SUBMISSION_2022/")).ToString("dd/MMM/yyyy hh:mm:ss tt")
            lblrecentuploads.Text &= " <b><a href='Submission.aspx#mad22'>MAD Submissions : </a></b>" & files1.Count & "<br>"

            'RECENT FILE LIST HIDDEN

            'for CPPM SUBMISSION 
            Dim filePaths3() As String = Directory.GetFiles(Server.MapPath("~/CPPM_Submission_2021/"))
            Dim files3 As List(Of ListItem) = New List(Of ListItem)
            For Each filePath As String In filePaths3

                'ongoing process for attributes
                Dim attributes As FileAttributes
                attributes = File.GetAttributes(filePath)


                files3.Add(New ListItem(Path.GetFileName(filePath), "FYBCA Upload"))

            Next
            ' get file attributes in tooltip 

            DataList5.DataSource = files3
            DataList5.DataBind()

            lblrecentuploads.Text &= "<b>Last File Submitted at : </b>" & Directory.GetLastWriteTime(Server.MapPath("~/CPPM_Submission_2021/")).ToString("dd/MMM/yyyy hh:mm:ss tt")
            lblrecentuploads.Text &= " <b>CPPM Submissions : </b>" & files3.Count & "<br>"


            'for VB.NET SUBMISSION 
            Dim filePaths2() As String = Directory.GetFiles(Server.MapPath("~/VB_NET_Submission_2021/"))
            Dim files2 As List(Of ListItem) = New List(Of ListItem)
            For Each filePath As String In filePaths2

                'ongoing process for attributes
                Dim attributes As FileAttributes
                attributes = File.GetAttributes(filePath)


                files2.Add(New ListItem(Path.GetFileName(filePath), "SYBCA Upload"))

            Next
            ' get file attributes in tooltip 
            
            DataList6.DataSource = files2
            DataList6.DataBind()
            'RECENT FILE LIST HIDDEN

            lblrecentuploads.Text &= "<b>Last File Submitted at : </b>" & Directory.GetLastWriteTime(Server.MapPath("~/VB_NET_Submission_2021/")).ToString("dd/MMM/yyyy hh:mm:ss tt")
            lblrecentuploads.Text &= " <b>VB.NET Submissions : </b>" & files2.Count & "</br>"

            'For Operating System - 1 SUBMISSION 
            Dim filePathsos() As String = Directory.GetFiles(Server.MapPath("~/OS1_Submission_2020/"))
            Dim filesos As List(Of ListItem) = New List(Of ListItem)
            For Each filePath As String In filePathsos

                'ongoing process for attributes
                Dim attributes As FileAttributes
                attributes = File.GetAttributes(filePath)


                filesos.Add(New ListItem(Path.GetFileName(filePath), "FYBCA Upload"))

            Next
            ' get file attributes in tooltip 

            DataList4.DataSource = filesos
            DataList4.DataBind()
            'RECENT FILE LIST HIDDEN

            lblrecentuploads.Text &= "<b>Last File Submitted at : </b>" & Directory.GetLastWriteTime(Server.MapPath("~/OS1_Submission_2020/")).ToString("dd/MMM/yyyy hh:mm:ss tt")
            lblrecentuploads.Text &= " <b>OS -1 Submissions : </b>" & filesos.Count


        End If

    End Sub
    
 
   

    'Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
    '    If e.Row.RowType = DataControlRowType.DataRow Then
    '        Dim lblqy As Label = DirectCast(e.Row.FindControl("lblsrno"), Label)
    '        Dim qty As Integer = Int32.Parse(lblqy.Text)
    '        total = total + 1
    '    End If

    '    If e.Row.RowType = DataControlRowType.Footer Then
    '        Dim lblTotalqty As Label = DirectCast(e.Row.FindControl("lblTotalqty"), Label)
    '        lblTotalqty.Text = "Total Files:  " & total
    '    End If
    'End Sub

    'Protected Sub GridView1_Sorting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSortEventArgs) Handles GridView1.Sorting
    '    If e.SortExpression = "srno" Then

    '        e.Cancel = True
    '        Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Sorting Not Possible')</SCRIPT>")

    '    Else



    '    End If
    'End Sub

    Protected Sub btnUploadFYBCA_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUploadFYBCA.Click
                'Dim struname As String = Session("User")
        Dim savedir As String = "error_screenshots\"
                'Dim customfolder As String = struname + savedir
                'Response.Write(customfolder)
                Dim apppath As String = Request.PhysicalApplicationPath
                'Response.Write("APPLICATION PATH IS:  " & apppath)
                If FileUpload1.HasFile Then
                    'new
                    Try

                '  If FileUpload1.PostedFile.ContentType = "text/rtf" Or FileUpload1.PostedFile.ContentType = "application/doc" Or FileUpload1.PostedFile.ContentType = "appl/text" Or FileUpload1.PostedFile.ContentType = "application/vnd.msword" Or FileUpload1.PostedFile.ContentType = "application/vnd.ms-word" Or FileUpload1.PostedFile.ContentType = "application/winword" Or FileUpload1.PostedFile.ContentType = "application/word" Or FileUpload1.PostedFile.ContentType = "application/msword" Or FileUpload1.PostedFile.ContentType = "application/x-msw6" Or FileUpload1.PostedFile.ContentType = "application/x-msword" Or FileUpload1.PostedFile.ContentType = "application/pdf" Or FileUpload1.PostedFile.ContentType = "application/x-pdf" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.template" Then

                'If FileUpload1.PostedFile.ContentLength < 5120000 Then

                Dim extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
                'Dim savepath As String = apppath & savedir & Server.HtmlEncode(FileUpload1.FileName)
                Dim savepath As String = apppath & savedir & TextBox1.Text.Trim & extension
                FileUpload1.SaveAs(savepath)
                'lblSucess.Text = savepath & "<br>"
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('File Uploaded Successfully')</SCRIPT>")

                lblSucess.Text = "File Uploaded Successfully as : " & TextBox1.Text.Trim

                ' Else

                '  lblSucess.Text = "Upload status: The file has to be less than 5 Mb!"

                ' End If
                '  Else

                '   lblSucess.Text = "Upload status: Only Doc files are accepted!"
                '   End If
            Catch ex As Exception

                lblSucess.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
            End Try

            'old
        Else

            lblSucess.Text = "PLEASE SELECT A FILE "
            TextBox1.Text = ""
        End If


    End Sub

    Protected Sub btnUploadVB_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUploadVB.Click
        'submission over period
        'Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('LATE SUBMISSION NOT ALLOWED  !!!')</SCRIPT>")

        'Dim struname As String = Session("User")
        Dim savedir As String = "VB_NET_Submission_2021\"
        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        'Response.Write("APPLICATION PATH IS:  " & apppath)
        If FileUpload1.HasFile Then
            'new
            Try
                If FileUpload1.PostedFile.ContentType = "text/rtf" Or FileUpload1.PostedFile.ContentType = "application/doc" Or FileUpload1.PostedFile.ContentType = "appl/text" Or FileUpload1.PostedFile.ContentType = "application/vnd.msword" Or FileUpload1.PostedFile.ContentType = "application/vnd.ms-word" Or FileUpload1.PostedFile.ContentType = "application/winword" Or FileUpload1.PostedFile.ContentType = "application/word" Or FileUpload1.PostedFile.ContentType = "application/msword" Or FileUpload1.PostedFile.ContentType = "application/x-msw6" Or FileUpload1.PostedFile.ContentType = "application/x-msword" Or FileUpload1.PostedFile.ContentType = "application/pdf" Or FileUpload1.PostedFile.ContentType = "application/x-pdf" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.template" Then

                    If FileUpload1.PostedFile.ContentLength < 5120000 Then

                        Dim extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
                        'Dim savepath As String = apppath & savedir & Server.HtmlEncode(FileUpload1.FileName)
                        Dim savepath As String = apppath & savedir & TextBox1.Text & extension
                        FileUpload1.SaveAs(savepath)
                        'lblSucess.Text = savepath & "<br>"
                        lblSucess.Text = "File Uploaded Successfully as : " & TextBox1.Text & extension
                        Response.Redirect("Submission.aspx#vb.net")
                    Else
                        lblSucess.Text = "Upload status: The file has to be less than 5 Mb!"
                    End If
                Else
                    lblSucess.Text = "Upload status: Only Doc files are accepted!"
                End If
            Catch ex As Exception
                lblSucess.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
            End Try

            'old
        Else
            lblSucess.Text = "PLEASE SELECT A FILE "
        End If

        'Response.Redirect("Submission.aspx")

    End Sub

    Protected Sub btnUploadASP_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUploadASP.Click
        If Session("studid") IsNot String.Empty Then
            If Session("studid") <> 0 Then
                'Dim struname As String = Session("User")
                Dim savedir As String = "ASP_NET_Submission_2021\"
                'Dim customfolder As String = struname + savedir
                'Response.Write(customfolder)
                Dim apppath As String = Request.PhysicalApplicationPath
                'Response.Write("APPLICATION PATH IS:  " & apppath)
                If FileUpload1.HasFile Then
                    'new
                    Try
                        If FileUpload1.PostedFile.ContentType = "text/rtf" Or FileUpload1.PostedFile.ContentType = "application/doc" Or FileUpload1.PostedFile.ContentType = "appl/text" Or FileUpload1.PostedFile.ContentType = "application/vnd.msword" Or FileUpload1.PostedFile.ContentType = "application/vnd.ms-word" Or FileUpload1.PostedFile.ContentType = "application/winword" Or FileUpload1.PostedFile.ContentType = "application/word" Or FileUpload1.PostedFile.ContentType = "application/msword" Or FileUpload1.PostedFile.ContentType = "application/x-msw6" Or FileUpload1.PostedFile.ContentType = "application/x-msword" Or FileUpload1.PostedFile.ContentType = "application/pdf" Or FileUpload1.PostedFile.ContentType = "application/x-pdf" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.template" Then

                            If FileUpload1.PostedFile.ContentLength < 5120000 Then

                                Dim extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
                                'Dim savepath As String = apppath & savedir & Server.HtmlEncode(FileUpload1.FileName)
                                Dim savepath As String = apppath & savedir & Session("studid") & extension
                                FileUpload1.SaveAs(savepath)
                                'lblSucess.Text = savepath & "<br>"
                                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('File Uploaded Successfully')</SCRIPT>")

                                lblSucess.Text = "File Uploaded Successfully as : " & Session("studid") & extension
                                'Response.Redirect("Submission.aspx")

                            Else

                                lblSucess.Text = "Upload status: The file has to be less than 5 Mb!"

                            End If
                        Else

                            lblSucess.Text = "Upload status: Only Doc files are accepted!"
                        End If
                    Catch ex As Exception

                        lblSucess.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
                    End Try

                    'old
                Else
                    'PLEASE SELECT A FILE
                    Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Please Select a File')</SCRIPT>")

                    lblSucess.Text = "PLEASE SELECT A FILE "
                    TextBox1.Text = ""
                End If
            Else
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Update Your RollNo on Update Page...!!!')</SCRIPT>")

                lblSucess.Text = "Error Uploading File....!!!!"
                ' Response.Redirect("UpdateProfile.aspx")
            End If

        Else
            Response.Redirect("LoginDemo.aspx")
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'submission over period
        'Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('LATE SUBMISSION NOT ALLOWED  !!!')</SCRIPT>")

        'Dim struname As String = Session("User")
        Dim savedir As String = "CPPM_Submission_2021\"
        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        'Response.Write("APPLICATION PATH IS:  " & apppath)
        If FileUpload1.HasFile Then
            'new
            Try
                If FileUpload1.PostedFile.ContentType = "text/rtf" Or FileUpload1.PostedFile.ContentType = "application/doc" Or FileUpload1.PostedFile.ContentType = "appl/text" Or FileUpload1.PostedFile.ContentType = "application/vnd.msword" Or FileUpload1.PostedFile.ContentType = "application/vnd.ms-word" Or FileUpload1.PostedFile.ContentType = "application/winword" Or FileUpload1.PostedFile.ContentType = "application/word" Or FileUpload1.PostedFile.ContentType = "application/msword" Or FileUpload1.PostedFile.ContentType = "application/x-msw6" Or FileUpload1.PostedFile.ContentType = "application/x-msword" Or FileUpload1.PostedFile.ContentType = "application/pdf" Or FileUpload1.PostedFile.ContentType = "application/x-pdf" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.template" Then

                    If FileUpload1.PostedFile.ContentLength < 5120000 Then

                        Dim extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
                        'Dim savepath As String = apppath & savedir & Server.HtmlEncode(FileUpload1.FileName)
                        Dim savepath As String = apppath & savedir & TextBox1.Text & extension
                        FileUpload1.SaveAs(savepath)
                        'lblSucess.Text = savepath & "<br>"
                        lblSucess.Text = "File Uploaded Successfully as : " & TextBox1.Text & extension
                        Response.Redirect("Submission.aspx#cppmsubmitted")
                    Else
                        lblSucess.Text = "Upload status: The file has to be less than 5 Mb!"
                    End If
                Else
                    lblSucess.Text = "Upload status: Only Doc files are accepted!"
                End If
            Catch ex As Exception
                lblSucess.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
            End Try

            'old
        Else
            lblSucess.Text = "PLEASE SELECT A FILE "
        End If

        ' Response.Redirect("Submission.aspx#cppmsubmitted")

    End Sub
    Protected Sub btnMAD_Click(sender As Object, e As EventArgs) Handles btnMAD.Click
        'Dim struname As String = Session("User")
        Dim savedir As String = "405_MAD_SUBMISSION_2022\"
        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        'Response.Write("APPLICATION PATH IS:  " & apppath)
        If FileUpload1.HasFile Then
            'new
            Try

                '  If FileUpload1.PostedFile.ContentType = "text/rtf" Or FileUpload1.PostedFile.ContentType = "application/doc" Or FileUpload1.PostedFile.ContentType = "appl/text" Or FileUpload1.PostedFile.ContentType = "application/vnd.msword" Or FileUpload1.PostedFile.ContentType = "application/vnd.ms-word" Or FileUpload1.PostedFile.ContentType = "application/winword" Or FileUpload1.PostedFile.ContentType = "application/word" Or FileUpload1.PostedFile.ContentType = "application/msword" Or FileUpload1.PostedFile.ContentType = "application/x-msw6" Or FileUpload1.PostedFile.ContentType = "application/x-msword" Or FileUpload1.PostedFile.ContentType = "application/pdf" Or FileUpload1.PostedFile.ContentType = "application/x-pdf" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document" Or FileUpload1.PostedFile.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.template" Then

                'If FileUpload1.PostedFile.ContentLength < 5120000 Then

                Dim extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
                'Dim savepath As String = apppath & savedir & Server.HtmlEncode(FileUpload1.FileName)
                Dim savepath As String = apppath & savedir & TextBox1.Text.Trim & extension
                FileUpload1.SaveAs(savepath)
                'lblSucess.Text = savepath & "<br>"
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('File Uploaded Successfully')</SCRIPT>")

                lblSucess.Text = "File Uploaded Successfully as : " & TextBox1.Text.Trim

                ' Else

                '  lblSucess.Text = "Upload status: The file has to be less than 5 Mb!"

                ' End If
                '  Else

                '   lblSucess.Text = "Upload status: Only Doc files are accepted!"
                '   End If
            Catch ex As Exception

                lblSucess.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
            End Try

            'old
        Else

            lblSucess.Text = "PLEASE SELECT A FILE "
            TextBox1.Text = ""
        End If

    End Sub
End Class


