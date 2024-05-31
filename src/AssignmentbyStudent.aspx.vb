Imports System.Data
Imports System.Data.SqlClient

Partial Class AssignmentbyStudent
    Inherits System.Web.UI.Page

    Dim ds As DataSet

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        DropDownList2.Items.Clear()
        Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString)
        Dim cmd As New SqlCommand("select * from subjectMaster where yearID=" & DropDownList1.SelectedValue, cn)
        Dim da As New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds, "subjectMaster")
        'Dim dr As SqlDataReader
        'If cn.State = ConnectionState.Open Then
        '    cn.Close()
        'End If
        'cn.Open()
        'dr = cmd.ExecuteReader
        'Dim i As Integer = 0
        'While dr.Read
        '    'year namein dropdownlist
        '    DropDownList2.Items.Insert(i, dr.Item(1).ToString)
        '    i += 1
        'End While
        DropDownList2.DataSource = ds.Tables("subjectMaster")
        DropDownList2.DataTextField = "subjectName"
        DropDownList2.DataValueField = "subjectID"
        DropDownList2.DataBind()


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            'Response.Write(DropDownList2.DataValueField)
        Else
            Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString)
            Dim cmd As New SqlCommand("select * from yearMaster", cn)
            Dim da As New SqlDataAdapter(cmd)
            ds = New DataSet
            da.Fill(ds, "yearMaster")
            'Dim dr As SqlDataReader
            'If cn.State = ConnectionState.Open Then
            '    cn.Close()
            'End If
            'cn.Open()
            'dr = cmd.ExecuteReader
            'Dim i As Integer = 0
            'While dr.Read
            '    'year namein dropdownlist
            '    DropDownList1.Items.Insert(i, dr.Item(1).ToString)
            '    i += 1
            'End While
            DropDownList1.DataSource = ds.Tables("yearMaster")
            DropDownList1.DataTextField = "yearName"
            DropDownList1.DataValueField = "yearID"
            'DropDownList1.Items.Add("SELECT")
            DropDownList1.DataBind()

        End If
    End Sub

   
    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString)
        Dim qstr As String = "select Sr_No,Academic_Year,Ass_Sem,Ass_Div,Ass_AssignmentNo,Ass_Type from Student_Assignment where yearID=" & DropDownList1.SelectedValue & " and subjectID=" & Convert.ToString(DropDownList2.SelectedValue) & " and IsActive=1;"
        Dim cmd As New SqlCommand(qstr, cn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub
End Class
