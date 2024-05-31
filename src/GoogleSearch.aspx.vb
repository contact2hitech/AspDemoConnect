
Partial Class GoogleSearch
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim myobj As New wsdtybca.tybcadiv1
        Label1.Text = myobj.HelloWorld
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim myobj As New wsdtybca.tybcadiv1
        Dim dt As New DataTable
        dt = myobj.searchdata("select * from studinfo where sname like '%" & TextBox1.Text & "%';")
        'dt = myobj.searchdata("select * from reg_details")
        ' If dt.Rows.Count > 0 Then
        GridView1.DataSource = dt
        GridView1.DataBind()
        'Else
        'dt.Columns.Clear()
        'Dim myrow As DataRow
        'Dim mycol As New DataColumn("RECORDS DETAILS", Type.GetType("System.String"))
        'dt.Columns.Add(mycol)
        'myrow = dt.NewRow()
        'myrow("RECORDS DETAILS") = "NO RECORDS FOUND MATCHING YOUR SEARCH"
        'dt.Rows.Add(myrow)
        'GridView1.DataSource = dt
        'GridView1.DataBind()
        'End If

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim myobj As New wsdtybca.tybcadiv1
        Label2.Text = myobj.Greetings(TextBox2.Text)
    End Sub
End Class
