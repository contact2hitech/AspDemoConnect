Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data


Partial Class GridCustomization
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand

    Dim ds As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
        Dim qry As String
        qry = "Select student_id,name, simage from reg_details order by student_id Asc"
        cmd.Connection = cn
        cmd.CommandText = qry
        Dim da1 As New SqlDataAdapter(cmd)
        da1.Fill(ds)
        '        GridView1.AutoGenerateColumns = False
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub
End Class
