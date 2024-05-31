Imports System.Data
Partial Class Default3
    Inherits System.Web.UI.Page
    Dim cn As New myconnection
    Dim dt As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim str, qstr As String
        str = Server.UrlDecode(Request.QueryString("dept"))
        Response.Write("YOU HAVE SELECTED: " & str)
        'If str = "" Then
        '    lblInfo.Text = "Please go to previous page..."
        'Else
        '    lblInfo.Text = "WELCOME DEAR " & Session("Uname") & " how are you. Is your Contact no " & Session("Umob")
        '    dt = cn.getdata("select * from employee where did=" & str)
        '    'dt = cn.getdata("select * from employee")
        '    GridView1.DataSource = dt
        '    GridView1.DataBind()

        'End If
        'MsgBox(str)

        ' WRITE CODE FOR DISPLAYING RECORDS OF PARTICLUAR DEPT .
        'Dim str, qstr As String
        'str = Request.QueryString("dept")
        'qstr = "Select * from employee where did=" & str
        'MsgBox(qstr)
        ' coding for displaying records in gridview


    End Sub
End Class
