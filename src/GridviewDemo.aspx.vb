Imports MySql.Data.MySqlClient

Partial Class GridviewDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblinfo.Text = " dear <" & Session("Uname") & "> is your mobile no : <" & Session("Umob") & "> SESS ID IS: <" & Session.SessionID & ">"
        Dim cn As New MySqlConnection("server=192.168.10.227;database=tybca75;Username=TYBCA75;password=1LYJS;")
        Dim cmd As New MySqlCommand("select * from info", cn)
        Dim da As New MySqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds)
        GridView2.DataSource = ds.Tables(0)
        GridView2.DataBind()

    End Sub

    Protected Sub btnShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        Session("Sid") = txtData.Text
    End Sub
End Class
