Imports System.Data
Imports System.Net
Partial Class Moderator_Attendance
    Inherits System.Web.UI.Page
    Public Shared strCurrntMonthYear As String = ""
    Private dbCon As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("constrsql").ToString())
    Private ds As Data.DataSet
    Private Year As Integer = 0
    Private inMonth As Integer = 0
    Private srno As Integer = 1
    Private sdate As Date
    Private statevalue As Integer = 1
    Private edate As Date
    Private monthdays As Integer = 1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  If Not Page.IsPostBack Then
        If Session("User") = "abc@abc.com" Then
            'SaveData()
            'Calendar1.SelectedDate = DateTime.Today
            sdate = Calendar1.SelectedDate
            monthdays = Date.DaysInMonth(sdate.Year, sdate.Month)
            'Response.Write("MONTH DAYS " & monthdays.ToString)
            'Response.Write("SDATE MONTH " & sdate.Month & "/  SDATE YEAR" & sdate.Year)
            'sdate = #8/1/2014#
            'edate = #8/30/2014#
            'get data in grid
            getdataingrid()
            'get ID ADDRESS
            'Try
            '    Dim externalIP As String
            '    externalIP = (New WebClient()).DownloadString("http://checkip.dyndns.org/")
            '    externalIP = (New Regex("\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}")).Matches(externalIP)(0).ToString()
            '    Label1.Text = externalIP

            'Catch ex As Exception
            '    Label1.Text = ""
            'End Try

        Else
            Response.Redirect("../LoginDemo.aspx")
        End If

        'End If

        ' Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Hello this is an Alert')</SCRIPT>")
    End Sub

    Protected Sub getdataingrid()
        'Dim strqry As String = "Select DISTINCT student_id,attID,attdate, attStatus from AttendanceMaster1 where attdate=convert(datetime,'" & Calendar1.SelectedDate.ToString("dd/MM/yyyy") & "', 103) order by student_id Asc"
        srno = 1
        Dim strqry As String = ""
        If ddlDiv.SelectedValue = "DIV1" Then
            strqry = "SELECT student_id, name FROM reg_details WHERE (student_id BETWEEN 1 AND 61) ORDER BY student_id"
        ElseIf ddlDiv.SelectedValue = "DIV2" Then
            strqry = "SELECT student_id, name FROM reg_details WHERE (student_id BETWEEN 62 AND 122) ORDER BY student_id"
        ElseIf ddlDiv.SelectedValue = "ZERO" Then
            strqry = "SELECT student_id, name FROM reg_details WHERE (student_id =0) ORDER BY student_id Desc"
        Else
            strqry = "SELECT student_id, name FROM reg_details WHERE (student_id > 114) ORDER BY student_id Desc"
        End If
        Dim cmd As New SqlCommand(strqry, dbCon)
        ds = New DataSet
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(ds)
        gvStudents.DataSource = ds.Tables(0)
        gvStudents.DataBind()
        txtDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy")
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        'getdataingrid()
    End Sub

    Protected Sub gvStudents_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvStudents.RowDataBound
        Dim drv As DataRowView = TryCast(e.Row.DataItem, DataRowView)

        If e.Row.RowType = DataControlRowType.DataRow Then
            If ((e.Row.RowState & DataControlRowState.Edit) > 0) Then
                'hpp code
                Dim lblSrno As Label = DirectCast(e.Row.FindControl("lblSrNo"), Label)
                lblSrno.Text = srno
                srno = srno + 1
                Dim cblProject As CheckBoxList = DirectCast(e.Row.FindControl("chklstMonth"), CheckBoxList)
                Dim dt As DataTable = getattendance(drv(0).ToString)
                'OK DONE
                For i As Integer = 0 To dt.Rows.Count - 1
                    Dim lt As New ListItem()
                    Dim dateatten As DateTime = dt.Rows(i)("attdate").ToString()
                    dateatten = dateatten.Date
                    lt.Text = dateatten.Day
                    cblProject.Items.Add(lt)
                    cblProject.Items(i).Selected = dt.Rows(i)(2).ToString()
                Next
                'DONE OK 19/09/2014

                'Dim totrec As Integer = dt.Rows.Count
                'Dim strrec As Integer = 0
                'Dim dateatten As DateTime
                'For i As Integer = Today.Day To Today.Day
                '    If strrec < totrec Then
                '        dateatten = dt.Rows(strrec)("attdate").ToString()
                '        dateatten = dateatten.Date
                '    End If
                '    Dim lt As New ListItem()
                '    If i = dateatten.Day Then
                '        lt.Text = i
                '        cblProject.Items.Add(lt)
                '        cblProject.Items(i - 1).Selected = True
                '        strrec = strrec + 1
                '    Else
                '        lt.Text = i
                '        cblProject.Items.Add(lt)
                '        cblProject.Items(i - 1).Selected = False
                '    End If
                '    'End If
                'Next

                Dim cblcounter As CheckBoxList = DirectCast(e.Row.FindControl("chklstMonth"), CheckBoxList)
                Dim lbltotal As Label = DirectCast(e.Row.FindControl("lbltotal"), Label)
                Dim intcou, totalatten As Integer
                totalatten = 0
                For intcou = 0 To cblcounter.Items.Count-1
                    If cblcounter.Items(intcou).Selected Then
                        totalatten = totalatten + 1
                    Else

                    End If
                Next
                lbltotal.Text = totalatten & "/" & cblcounter.Items.Count
            End If
        End If
    End Sub

    Public Function getattendance(ByVal sid As String) As DataTable
        Dim dt As New DataTable()
        'dbCon.Open()
        'Dim sql As String = "select distinct student_id,attdate,attStatus from AttendanceMaster1 where (attdate BETWEEN convert(datetime,'1/" & sdate.Month & "/" & sdate.Year & "', 103) AND convert(datetime,'" & monthdays & "/" & sdate.Month & "/" & sdate.Year & "', 103)) AND student_id IN(SELECT student_id FROM AttendanceMaster1 where student_id='" & sid & "')"

        Dim sql As String = "select distinct student_id,attdate,attStatus from AttendanceMaster1 where (attdate BETWEEN convert(varchar,'" & sdate.Month & "/" & sdate.Day & "/" & sdate.Year & "', 106) AND convert(varchar,'" & sdate.Month & "/" & sdate.Day & "/" & sdate.Year & "', 106)) AND student_id IN(SELECT student_id FROM AttendanceMaster1 where student_id='" & sid & "')"
        'Response.Write(sql)
        'Dim sql As String = "select distinct student_id,attdate,attStatus from AttendanceMaster1 where (attdate = convert(datetime,'" & Calendar1.SelectedDate & "', 103)  AND student_id IN(SELECT student_id FROM AttendanceMaster1 where student_id='" & sid & "')"
        Dim cmd As New SqlCommand(sql)
        cmd.CommandType = CommandType.Text
        cmd.Connection = dbCon
        Dim sd As New SqlDataAdapter(cmd)
        sd.Fill(dt)
        Return dt
    End Function

    Protected Sub ddlDiv_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlDiv.SelectedIndexChanged
        getdataingrid()
    End Sub
    Protected Sub SaveData()
        'here I am assuming logged in employee Id as 1
        'Dim strQry As String = (Convert.ToString((Convert.ToString("INSERT INTO AttendanceMaster1 (empId, attmonth, attYear, attStatus, remarks, attdate, loggedInDate ) VALUES (" & Session("student_id") & "," + DateTime.Now.Month + "," + DateTime.Now.Year + "," + attStatus + ", '") & strRemarks) + "', '") & strDate) + "',getDate())"
        Dim attStatus As Integer = 1
        Dim strqry As String = "INSERT INTO AttendanceMaster1(empId, attmonth, attYear, attStatus, remarks, attdate, loggedInDate ) VALUES (" & Session("student_id") & "," & DateTime.Now.Month & "," & DateTime.Now.Year & "," & attStatus & ",'" & "DONE" & "','" & CStr(DateTime.Now.ToString) & "',getDate())"
        Dim cmd As New SqlCommand(strqry, dbCon)
        Try
            dbCon.Open()
            cmd.ExecuteNonQuery()
            cmd.Dispose()
            dbCon.Close()
        Catch ex As Exception
            Response.Write("TEST ERROR : " & ex.ToString)
            cmd.Dispose()
            dbCon.Close()
        End Try
    End Sub

    
End Class
