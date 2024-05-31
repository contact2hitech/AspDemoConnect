
Partial Class liverecordinsertdemo
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRegister.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=F:\HPP Personal\Dropbox\Study Material\ASP.NET\Samples\App_Data\2016 data\Demos.mdf;Integrated Security=True;User Instance=True")
        Dim inqstr As String = "insert into studinfo values(" & txtsid.Text & ",'" _
 & txtsname.Text & " ','" & txtsmobile.Text & "','" & txtsimage.Text & "'," _
    & txtcid.Text & ")"
        Dim cmd As New SqlCommand(inqstr, cn)
        Dim counter As Integer = 0
        cn.Open()
        counter = cmd.ExecuteNonQuery()
        cn.Close()
        If counter > 0 Then
            lblstatus.Text = "Registration Successful"
            Response.Redirect("liverecordsdisplaywithcode.aspx")
        Else
            lblstatus.Text = "Registration NOT Successful"
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else

        End If


    End Sub
End Class
