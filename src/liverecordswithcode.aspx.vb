Imports System.Data
Imports System.Data.SqlClient
Partial Class liverecordswithcode
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=F:\HPP Personal\Dropbox\Study Material\ASP.NET\Samples\App_Data\2016 data\Demos.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select * from studinfo", cn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub
End Class
