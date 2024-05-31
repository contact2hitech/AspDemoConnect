
Partial Class registration
    Inherits System.Web.UI.Page

    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'clinicallclear()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        clinicallclear()
    End Sub

    Sub clinicallclear()
        txtcity.Text = ""
        txtcpassword.Text = ""
        txtemail.Text = ""
        txtmno.Text = ""
        txtname.Text = ""
        txtpassword.Text = ""
    End Sub

    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ToString)
        Dim querystr As String = "insert into hitlist values('" & txtname.Text & "','" & txtmno.Text & "','" & txtemail.Text & "',1,'" & txtcity.Text & "','" & txtpassword.Text & "','001.jpg')"
        'Response.Write(querystr)
        Dim cmd As New SqlCommand(querystr, cn)
        Dim counter As Integer = 0
        If cn.State = ConnectionState.Open Then
            cn.Close()
        End If
        cn.Open()
        counter = cmd.ExecuteNonQuery()
        cn.Close()
        If counter > 0 Then
            lblresult.Text = "REGISTRATION SUCCESFUL"
        Else
            lblresult.Text = "REGISTRATION UNSUCCESFUL"
        End If
    End Sub
End Class
