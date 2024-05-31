Partial Class GridviewCoding
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Using cn As New SqlConnection
            'Dim inti As Integer
            'For inti = 0 To System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Count - 1
            '    Label1.Text &= "CON STRING: " & inti & " : NAME : " & System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(inti).Name & "<br> CON STR : " & System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(inti).ConnectionString.ToString & "<br>"
            'Next
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString
            Dim cmd As New SqlCommand("Select * from reg_details", cn)
            Dim da As New SqlDataAdapter(cmd)
            Dim ds As New Data.DataSet
            da.Fill(ds, "HPP")
            ds.Tables("HPP").Columns.Remove("uname")
            ds.Tables("HPP").Columns.Remove("upassword")
            GridView1.DataSource = ds.Tables("HPP")
            GridView1.DataBind()
        End Using
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim cn As New SqlConnection
        'Dim inti As Integer
        'For inti = 0 To System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Count - 1
        '    Label1.Text &= "CON STRING: " & inti & " : NAME : " & System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(inti).Name & "<br> CON STR : " & System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(inti).ConnectionString.ToString & "<br>"
        'Next
        cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString
        'Dim cmd As New SqlCommand("select Count(*) from reg_details where city='" & TextBox1.Text.Trim & "'", cn)
        Dim cmd As New SqlCommand("select count(city) from reg_details where city='" & TextBox1.Text & "'", cn)
        cn.Open()
        Dim cou As Integer
        cou = cmd.ExecuteScalar
        cn.Close()
        lblCity.Text = "TOTAL USERS FROM " & TextBox1.Text & " ARE : " & cou
    End Sub
End Class
