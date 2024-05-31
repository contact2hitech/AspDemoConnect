Imports System.Data
Imports System.Data.SqlClient

Partial Class datalist2020
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=F:\HPP Personal\Dropbox\Study Material\ASP.NET\Samples\App_Data\2016 data\Demos.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("Select student_id,name,simage from reg_details", cn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds)
        DataList2.DataSource = ds.Tables(0)
        DataList2.DataBind()
        Repeater2.DataSource = ds.Tables(0)
        Repeater2.DataBind()


    End Sub
End Class
