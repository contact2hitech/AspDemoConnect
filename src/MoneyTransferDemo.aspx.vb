
Partial Class MoneyTransferDemo
    Inherits System.Web.UI.Page
    Dim str As String = System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString
    Dim cn As New SqlConnection(str)
    Private srno As Integer = 1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else
            If Not Page.IsPostBack Then


                ' Dim str As String = System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString
                ' Dim cn As New SqlConnection(str)
                Dim myobj As New myconnection
                Dim dt As New DataTable
                Dim query As String
                query = "Select upassword,[student_id],[name],emailid,mobile,city,uname,div,simage,amount_bal,account_type from reg_details where uid=" & Session("uidno") & ""
                dt = myobj.getdata(query)


                'list of defaulters
                Dim myobj1 As New myconnection
                Dim dt1 As New DataTable
                Dim query1 As String
                query1 = "Select upassword,[student_id],[name],emailid,mobile,city,uname,div,simage,amount_bal,account_type from reg_details where (amount_bal < 10)"
                dt1 = myobj.getdata(query1)
                Dim idefolters As Integer = 0
                If dt1.Rows.Count > 0 Then
                    For idefolters = 0 To dt1.Rows.Count - 1
                        lbldefolters.Text &= idefolters + 1 & "." & dt1.Rows(idefolters).Item(2).ToString & " (" & dt1.Rows(idefolters).Item(1).ToString & ") <br>"
                    Next
                Else
                    lbldefolters.Text = "All Users have Sufficient Balance...!"
                End If

                If dt.Rows.Count > 0 Then
                    Profile.STUDENT_DETAILS.amount_bal = dt.Rows(0).Item(9).ToString
                    txtPerAccontName.Text = Profile.STUDENT_DETAILS.name
                    txtPerAccountNum.Text = Profile.STUDENT_DETAILS.student_id
                    ddlPerAccounttype.SelectedValue = Profile.STUDENT_DETAILS.account_type
                    txtPerAccountBal.Text = Profile.STUDENT_DETAILS.amount_bal
                Else
                    lblpaymentStatus.Text = "No Account Found...!!!"
                End If


                'clearall()

            End If

        End If
    End Sub
    Public Sub clearall()
        txttptAccountName.Text = ""
        txttptTransferAmount.Text = ""
        txttptAccountNo.Text = ""
    End Sub
   

    Protected Sub btntptPaynow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btntptPaynow.Click
        Try

            If Val(txtPerAccountBal.Text) > 0 And Val(txttptTransferAmount.Text) > 0 Then
                'use of transaction for 
                ''''cn.BeginTransaction()
                Dim obj As New myconnection
                Dim obj1 As New myconnection
                Dim obj3 As New myconnection
                Dim obj4 As New myconnection
                Dim updateqryplus As String = ""
                Dim updateqrymin As String = ""
                Dim inserttrancactionCr As String = ""
                Dim inserttrancactionDb As String = ""
                Dim newaccountbal As Double = Profile.STUDENT_DETAILS.tptacoountbal + Val(txttptTransferAmount.Text)
                Dim newaccountbaldebit As Double = Val(txtPerAccountBal.Text) - Val(txttptTransferAmount.Text)
                updateqryplus = "UPDATE [Demos].[dbo].[reg_details] SET [amount_bal] =" & newaccountbal & " WHERE student_id=" & txttptAccountNo.Text & ""
                updateqrymin = "UPDATE [Demos].[dbo].[reg_details] SET [amount_bal] =" & newaccountbaldebit & " WHERE uid=" & Session("uidno") & ""
                Dim dtime As String = DateTime.Now.ToString("dd/MM/yyyy")
                Dim dtimeti As String = DateTime.Now.ToString("hh:mm:ss")
                inserttrancactionCr = "INSERT INTO [Demos].[dbo].[transaction_master] ([student_id],[tr_type],[tr_date],[tr_time],[tr_details],[tr_amt],[tr_total]) VALUES(" & txttptAccountNo.Text & ",'Cr','" & dtime & "','" & dtimeti & "','Credited By " & txtPerAccontName.Text & " '," & txttptTransferAmount.Text & "," & newaccountbal & " )"
                inserttrancactionDb = "INSERT INTO [Demos].[dbo].[transaction_master] ([student_id],[tr_type],[tr_date],[tr_time],[tr_details],[tr_amt],[tr_total]) VALUES(" & txtPerAccountNum.Text & ",'Dr','" & dtime & "','" & dtimeti & "','Debited to " & txttptAccountName.Text & " '," & txttptTransferAmount.Text & "," & newaccountbaldebit & ")"
                'Response.Write(updateqry)


                Dim cou As Integer
                cou = obj.executedata(updateqryplus)
                If cou > 0 Then
                    lblpaymentStatus.Text = "UPDATE SUCCESS"
                    Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('UPDATED !!!')</SCRIPT>")
                    ' lblStatus.Text = "UPDATE SUCCESS"
                Else
                    Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Problem !!!')</SCRIPT>")
                    'lblStatus.Text = "UPDATE PROBLEM"
                End If

                Dim cou1 As Integer
                cou1 = obj1.executedata(updateqrymin)
                If cou1 > 0 Then
                    '  Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('UPDATED !!!')</SCRIPT>")
                    ' lblStatus.Text = "UPDATE SUCCESS"
                Else
                    '  Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Problem !!!')</SCRIPT>")
                    'lblStatus.Text = "UPDATE PROBLEM"
                End If

                'transaction details

                Dim cou2 As Integer
                cou2 = obj3.executedata(inserttrancactionCr)
                If cou2 > 0 Then
                    '  Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('UPDATED !!!')</SCRIPT>")
                    ' lblStatus.Text = "UPDATE SUCCESS"
                Else
                    '  Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Problem !!!')</SCRIPT>")
                    'lblStatus.Text = "UPDATE PROBLEM"
                End If

                Dim cou3 As Integer
                cou3 = obj4.executedata(inserttrancactionDb)
                If cou3 > 0 Then
                    ' Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('UPDATED !!!')</SCRIPT>")
                    '  ' lblStatus.Text = "UPDATE SUCCESS"
                Else
                    '   Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Problem !!!')</SCRIPT>")
                    'lblStatus.Text = "UPDATE PROBLEM"
                End If

                '''''cn.BeginTransaction.Commit()
                'Response.Redirect("Welcome.aspx")
                Session.Abandon()
            Else
                lblpaymentStatus.ForeColor = Drawing.Color.Red
                lblpaymentStatus.Text = "YOU CANNOT TRANSFER FUNDS....!!!!!"
            End If
            
        Catch ex As Exception
            '''''cn.BeginTransaction.Rollback()

        End Try
    End Sub

    Protected Sub btnFetchDetails_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFetchDetails.Click
        Dim myobj As New myconnection
        Dim dt As New DataTable
        Dim query As String = "select * from reg_details where student_id='" & txttptAccountNo.Text & "'"
        dt = myobj.getdata(query)
        ' If ds.Tables(0).Rows.Count >= 1 Then
        'Label1.Text = "You have " & ds.Tables(0).Rows.Count.ToString & " Accounts."
        'End If
        txttptAccountName.Text = dt.Rows(0).Item(2).ToString
        ddltptAccountType.SelectedValue = dt.Rows(0).Item(11).ToString
        Profile.STUDENT_DETAILS.tptacoountbal = dt.Rows(0).Item(10).ToString
        'txttptTransferAmount.Text = Profile.STUDENT_DETAILS.tptacoountbal
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        Dim drv As DataRowView = TryCast(e.Row.DataItem, DataRowView)
        If e.Row.RowType = DataControlRowType.DataRow Then
            If ((e.Row.RowState & DataControlRowState.Edit) > 0) Then
                Dim lblSrno As Label = DirectCast(e.Row.FindControl("lblSrNo"), Label)
                lblSrno.Text = srno
                srno = srno + 1

            End If
        End If
    End Sub
End Class
