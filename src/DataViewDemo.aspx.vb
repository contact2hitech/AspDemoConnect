Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Partial Class DataViewDemo
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da1 As New SqlDataAdapter
    Dim ds As DataSet
    Dim dv As DataView

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If TextBox1.Text = String.Empty Then
            gridrefresh()
        Else
            dv = New DataView(ds.Tables(0))
            dv.RowFilter = "student_id=" & TextBox1.Text
            dv.Sort = "emailid Desc"
            Dim no As Integer = dv.Find("tiwarivivek033@gmail.com")
            Response.Write("NUMBER IS : " & no)
            GridView1.DataSource = dv
            GridView1.DataBind()
        End If
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim mycon As New myconnection
        gridrefresh()
    End Sub
    Private Sub gridrefresh()
        cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)

        Dim qry As String = "select student_id,name,emailid, city,uname from reg_details Order By student_id Asc"
        'Dim qry1 As String = "select * from studinfo"
        'Dim qry2 As String = "select * from employee"
        'Dim qry3 As String = "select * from dept"
        'Dim qry4 As String = "select * from AttendanceMaster1"
        cmd = New SqlCommand(qry, cn)
        da1 = New SqlDataAdapter(cmd)
        ds = New DataSet
        da1.Fill(ds, "reg_details")
        ''QRY 2
        'cmd = New SqlCommand(qry1, cn)
        'da1 = New SqlDataAdapter(cmd)
        'da1.Fill(ds, "studinfo")

        ''QRY 3
        'cmd = New SqlCommand(qry2, cn)
        'da1 = New SqlDataAdapter(cmd)
        'da1.Fill(ds, "employee")
        ''QRY 4
        'cmd = New SqlCommand(qry3, cn)
        'da1 = New SqlDataAdapter(cmd)
        'da1.Fill(ds, "dept")

        ''QRY 5
        'cmd = New SqlCommand(qry4, cn)
        'da1 = New SqlDataAdapter(cmd)
        'da1.Fill(ds, "AttendanceMaster1")

        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        ' dv = New DataView(ds.Tables(0))
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        dv = New DataView(ds.Tables(0))
        Dim pos As Integer
        Dim myobj(1) As Object
        dv.Sort = "name, emailid"
        myobj(0) = TextBox1.Text
        myobj(1) = TextBox2.Text
        pos = dv.Find(myobj)
        Label1.Text = "RECORD FOUND ON NO : " & pos
        GridView1.DataSource = dv
        GridView1.DataBind()
    End Sub
End Class
