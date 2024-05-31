Imports System.Data
Imports System.Data.SqlClient
Partial Class CommandBuilder
    Inherits System.Web.UI.Page

    Dim myconn As New myconnection
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim ds As New DataSet("Mydataset")
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            showgrid()
        End If
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub
    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub
   
    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        showgrid()
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        showgrid()
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        'Dim drv As DataRowView = TryCast(e.Row.DataItem, DataRowView)
        'If e.Row.RowType = DataControlRowType.DataRow Then
        '    If ((e.Row.RowState & DataControlRowState.Edit) > 0) Then
        '        Dim droplist As DropDownList = DirectCast(e.Row.FindControl("ddlDept"), DropDownList)
        '        dt = New DataTable()
        '        dt = myconn.getdata("Select did from dept")
        '        Dim i As Integer
        '        Dim listitem As New ListItem()
        '        For i = 0 To dt.Rows.Count - 1
        '            listitem.Text = dt.Rows(i)(0).ToString
        '            droplist.Items.Add(listitem)
        '        Next
        '    End If
        'End If

    End Sub
    Public Sub showgrid()
        cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
        Dim qry As String
        qry = "Select * from employee"
        cmd.Connection = cn
        cmd.CommandText = qry
        Dim da1 As New SqlDataAdapter(cmd)
        da1.Fill(ds, "TYBCA2")
        GridView1.DataSource = ds.Tables("TYBCA2")
        GridView1.DataBind()
    End Sub
    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
        Dim qry As String
        qry = "Select * from employee"
        cmd.Connection = cn
        cmd.CommandText = qry
        Dim da1 As New SqlDataAdapter(cmd)
        Dim cb As New SqlCommandBuilder(da1)


        Label1.Text = "INSERT COMMAND : " & cb.GetInsertCommand.CommandText.ToString() & "<br><br>"
        Label1.Text &= "UPDATE COMMAND : " & cb.GetUpdateCommand.CommandText.ToString() & "<br><br>"
        Label1.Text &= "DELETE COMMAND : " & cb.GetDeleteCommand.CommandText.ToString() & "<br><br>"
        da1.Fill(ds, "TYBCA2")

        Dim EmpTable As DataTable = ds.Tables("TYBCA2")
        'EmpTable.TableName = "SutexTy1"
        'empty


        Dim row As DataRow = EmpTable.NewRow()
        row("eid") = "10"
        row("ename") = "TYBCA15"
        row("did") = "2"
        row("salary") = "999999"
        row("image") = "111.jpg"
        EmpTable.Rows.InsertAt(row, 0)

      
        ''  ds.Tables.Add(EmpTable)
        Dim icount As Integer = 0
        For icount = 0 To ds.Tables(0).Rows.Count - 2
            ds.Tables(0).Rows(icount).Delete()
        Next


        '        GridView1.AutoGenerateColumns = False

        GridView2.DataSource = ds.Tables("TYBCA2")
        GridView2.DataBind()
        da1.Update(ds, "TYBCA2")
    End Sub
End Class
