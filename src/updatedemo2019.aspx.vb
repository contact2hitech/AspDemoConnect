
Partial Class updatedemo2019
    Inherits System.Web.UI.Page
    Dim strpass As String = ""
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ToString)
        Dim cmd As New SqlCommand()
        cmd.Connection = cn
        Dim counter As Integer = 0
        Dim querystr As String = "update hitlist set sname='" & txtname.Text & "',smobile='" & txtmno.Text & "',semail='" & txtemail.Text & "',scourse=" & txtcourse.Text & ",scity='" & txtcity.Text & "',spassword='" & txtpassword.Text & "',simage='" & txtimage.Text & "' where sid=" & DropDownList1.SelectedValue & ";"
        'lblresult.Text = querystr
        cmd.CommandText = querystr
        If cn.State = ConnectionState.Open Then
            cn.Close()
        End If
        cn.Open()
        counter = cmd.ExecuteNonQuery()
        cn.Close()
        If counter > 0 Then
            lblresult.Text = "Update Successful"
        Else
            lblresult.Text = "Update UnSuccessful"
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            clinicallclear()
            If Session("User") = "" Then
                Response.Redirect("LoginDemo.aspx")
            Else
                'Dim cn As New SqlConnection("Data Source=X73\SQLEXPRESS;Initial Catalog=Demos;Integrated Security=True")
                Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ToString)
                Dim cmd As New SqlCommand("select * from hitlist", cn)
                Dim da As New SqlDataAdapter(cmd)
                Dim ds As New DataSet
                da.Fill(ds)
                DropDownList1.DataSource = ds.Tables(0)
                DropDownList1.DataTextField = "sid"
                DropDownList1.DataValueField = "sid"
                DropDownList1.DataBind()
            End If

        Else
         

        End If


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

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ToString)
        Dim cmd As New SqlCommand("select * from hitlist where sid=" & DropDownList1.SelectedValue, cn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds)
        txtname.Text = ds.Tables(0).Rows(0).Item(1).ToString
        txtmno.Text = ds.Tables(0).Rows(0).Item(2).ToString
        txtcity.Text = ds.Tables(0).Rows(0).Item(5).ToString
        txtemail.Text = ds.Tables(0).Rows(0).Item(3).ToString
        ViewState("mypass") = ds.Tables(0).Rows(0).Item(6).ToString
        txtpassword.Attributes.Add("value", ViewState("mypass"))
        txtimage.Text = ds.Tables(0).Rows(0).Item(7).ToString
        txtcourse.Text = ds.Tables(0).Rows(0).Item(4).ToString

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        'Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ToString)
        'Dim cmd As New SqlCommand()
        'cmd.Connection = cn
        'Dim counter As Integer = 0
        'Dim querystr As String = "delete from hitlist where sid=" & DropDownList1.SelectedValue & ";"
        ''lblresult.Text = querystr
        'cmd.CommandText = querystr
        'If cn.State = ConnectionState.Open Then
        '    cn.Close()
        'End If
        'cn.Open()
        'counter = cmd.ExecuteNonQuery()
        'cn.Close()
        'If counter > 0 Then
        '    lblresult.Text = counter & " Record Delete Successful"
        'Else
        '    lblresult.Text = "Delete UnSuccessful"
        'End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked Then
            'show pass
            ViewState("mypass") = txtpassword.Text
            txtpassword.TextMode = TextBoxMode.SingleLine
            txtpassword.Attributes.Add("value", ViewState("mypass"))
        Else
            'hide pass
            ViewState("mypass") = txtpassword.Text
            txtpassword.TextMode = TextBoxMode.Password
            txtpassword.Attributes.Add("value", ViewState("mypass"))

        End If
    End Sub
End Class
