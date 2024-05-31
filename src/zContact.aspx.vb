
Partial Class Default2
    Inherits System.Web.UI.Page

   
    Protected Sub btnTestDemo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnTestDemo.Click

        'Dim struname As String = Session("User")
        Dim savedir As String = "..\samples somee\Downloads\"
        'test smaple location changed use this or samples .somee
        'Dim savedir As String = "\Test_Samples\"

        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        ' Response.Write("APPLICATION PATH IS:  " & apppath)
        If FileUpload1.HasFile Then
            Try
                If FileUpload1.PostedFile.ContentLength < 104857600 Then
                    Dim savepath As String = apppath & savedir & FileUpload1.FileName
                    FileUpload1.SaveAs(savepath)
                    lblStatusUpload.Text = savepath & "<br>"
                    lblStatusUpload.Text &= "FILE UPLOADED SUCCESSFULLY"
                Else

                    lblStatusUpload.Text = "Upload status: The file has to be less than 5 Mb!"

                End If

            Catch ex As Exception
                lblStatusUpload.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
            End Try

        Else
            lblStatusUpload.Text = "PLEASE SELECT A FILE "
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Calendar1.SelectedDate = Today
    End Sub
End Class
