
Partial Class gettableslist
    Inherits System.Web.UI.Page
    Dim myobj As New myconnection
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString)
        'cn.Open()
        'Dim dt As DataTable = cn.GetSchema("Tables")
        'GridView1.DataSource = dt
        'GridView1.DataBind()
        'cn.Close()


        'demo for mysql database and their table list

        '        GridView1.DataSource = myobj.getalltablenamesmysql
        '       GridView1.DataBind()

        DropDownList2.DataSource = myobj.getalltablenamesmysql(True, , )
        DropDownList2.DataTextField = "TABLE_SCHEMA"
        DropDownList2.DataBind()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "abc@abc.com" Then
        Else
            Response.Redirect("LoginDemo.aspx")
        End If

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        DropDownList3.DataSource = myobj.getalltablenamesmysql(True, DropDownList2.SelectedItem.ToString, )
        DropDownList3.DataTextField = "TABLE_NAME"
        DropDownList3.DataBind()
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        If DropDownList2.Items.Count < 1 Then
        Else
            GridView1.DataSource = myobj.getalltablenamesmysql(False, DropDownList2.SelectedItem.ToString, DropDownList3.SelectedItem.ToString)
            GridView1.DataBind()
        End If
        
    End Sub
End Class
