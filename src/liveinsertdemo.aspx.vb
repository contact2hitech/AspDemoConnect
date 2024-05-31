Imports System.Data
Imports System.Data.SqlClient
Partial Class liveinsertdemo
    Inherits System.Web.UI.Page

    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=F:\HPP Personal\Dropbox\Study Material\ASP.NET\Samples\App_Data\2016 data\Demos.mdf;Integrated Security=True;User Instance=True")
        Dim inqstr As String = "insert into studinfo values(" & txtsid.Text & ",'" & txtsname.Text & "','" & txtsmobile.Text & "','" & txtimage.Text & "',1)"
        Dim cmd As New SqlCommand(inqstr, cn)
        Dim counter As Integer = 0
        cn.Open()
        counter = cmd.ExecuteNonQuery
        cn.Close()
        If counter > 0 Then
            lblstatus.Text = "Registration Successful"
            Response.Redirect("liverecorddisplay.aspx")
        Else
            lblstatus.Text = "Registration NOT Successful"
        End If


    End Sub
End Class
