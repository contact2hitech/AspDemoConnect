
Partial Class FileUploadDemo
    Inherits System.Web.UI.Page
    Protected Sub btnupload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload.Click
        'Dim struname As String = Session("User")
        Dim savedir As String = "2017Uploads\"
        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        Response.Write("APPLICATION PATH IS:  " & apppath)
        Response.Write("<br>YOUR SELECTED FILE NAME IS: " & FileUpload1.FileName)
        If FileUpload1.HasFile Then
            Dim savepath As String = apppath & savedir & FileUpload1.FileName
            FileUpload1.SaveAs(savepath)
            'Response.Write("<br>SAVE PATH : " & savepath)
            lblmessage.Text = savepath & "<br>"
            lblmessage.Text &= "FILE UPLOADED SUCCESSFULLY"
        Else
            lblmessage.Text = "PLEASE SELECT A FILE "
        End If
    End Sub
    Protected Sub btnupload2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload2.Click
        Dim str As String
        str = Server.MapPath("2017Uploads")
        Response.Write(str)
        If FileUpload1.HasFile Then
            If FileUpload1.FileBytes.Length < 512000 Then
                str = str & "\" & FileUpload1.FileName
                FileUpload1.SaveAs(str)
                lblmessage.Text &= "FILE UPLOADED SUCCESSFULLY at " & str & " and size was : " & FileUpload1.FileBytes.Length
            Else
                lblmessage.Text = "FILE SIZE MUST BE LESS THAN 500Kb"
            End If
            
        Else
            lblmessage.Text = "ERROR something wrong happened"
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If FileUpload2.HasFile Then
            'lbl201920.Text = FileUpload2.FileName
            Dim strpath As String = Server.MapPath("2017Uploads")
            strpath += "\" & FileUpload2.FileName
            FileUpload2.SaveAs(strpath)
            lbl201920.Text = "FILE UPLOADED SUCCESSFULLY AT " & strpath


        Else
            Response.Write("PLEASE SELECT A FILE ")
        End If




    End Sub
End Class











