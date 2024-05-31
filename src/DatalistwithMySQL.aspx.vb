Imports MySql.Data.MySqlClient
Partial Class DatalistwithMySQL
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As New MySqlConnection("server=192.168.10.227;database=tybca83;Username=TYBCA83;password=3JVYQ;")
        Dim cmd As New MySqlCommand("select * from stud;", cn)
        Dim da As New MySqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds)
        DataList1.DataSource = ds.Tables(0)
        DataList1.DataBind()
    End Sub
End Class
