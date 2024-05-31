
Partial Class WizardDemo
    Inherits System.Web.UI.Page
    Public strname As String = ""
   

   
    Protected Sub Wizard3_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard3.FinishButtonClick
        lbltest.Text = "YOUR NAME IS " & txtname.Text & " and you are " & txtage.Text & " years old"
    End Sub

    Protected Sub Wizard4_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard4.FinishButtonClick
        lblLastDisplay.Text = "YOUR USERNAME IS " & TextBox1.Text & " YOUR EMAIL ID IS " & TextBox2.Text
    End Sub

  

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dim struname As String = Session("User")
        Dim savedir As String = "image\"
        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        'Response.Write("APPLICATION PATH IS:  " & apppath)
        'Response.Write("<br>YOUR SELECTED FILE NAME IS: " & FileUpload1.FileName)

        If FileUpload1.HasFile Then
            Dim savepath As String = apppath & savedir & FileUpload1.FileName
            Label4.Text = FileUpload1.PostedFile.FileName
            FileUpload1.SaveAs(savepath)
            'Response.Write("<br>SAVE PATH : " & savepath)

        Else
            Response.Write("PROBLEM")
        End If
    End Sub

    Protected Sub Wizard1_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick
        Label3.Text = "HELLO DEAR USER " & TextBox3.Text & " your selected appointment date is : " & Calendar1.SelectedDate
        Image2.ImageUrl = "~\image\" & Label4.Text
    End Sub

    Protected Sub Wizard2_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard2.FinishButtonClick
        TextBox4.Text = TextBox5.Text
    End Sub
End Class
