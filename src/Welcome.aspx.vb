
Partial Class Welcome
    Inherits System.Web.UI.Page
    Dim mycoll As New System.Collections.ArrayList
    Public Shared strCurrntMonthYear As String = ""
    Private dbCon As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("constrsql").ToString())
    Private Year As Integer = 0
    Private inMonth As Integer = 0
    Protected Sub SaveData()
        'here I am assuming logged in employee Id as 1
        'Dim strQry As String = (Convert.ToString((Convert.ToString("INSERT INTO AttendanceMaster1 (empId, attmonth, attYear, attStatus, remarks, attdate, loggedInDate ) VALUES (" & Session("student_id") & "," + DateTime.Now.Month + "," + DateTime.Now.Year + "," + attStatus + ", '") & strRemarks) + "', '") & strDate) + "',getDate())"
        Dim attStatus As Integer = 1
        Dim strqry As String = Convert.ToString("INSERT INTO AttendanceMaster1(student_id, attmonth, attYear, attStatus, remarks, attdate, loggedInDate,ipaddress) VALUES (" & Session("studid") & "," & DateTime.Now.Month & "," & DateTime.Now.Year & "," & attStatus & ",'" & "DONE" & "',@att_Date1, getDate(),'" & GetIPAddress() & "')")
        Dim cmd As New SqlCommand(strqry, dbCon)
        cmd.Parameters.Add("@att_Date1", SqlDbType.DateTime)
        cmd.Parameters("@att_Date1").Value = DateTime.Now.ToString("yyyy-MM-dd")
        '
        ' Response.Write(strqry)


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
    Public Shared Function GetIPAddress() As String
        Dim context As System.Web.HttpContext = System.Web.HttpContext.Current
        Dim sIPAddress As String = context.Request.ServerVariables("HTTP_X_FORWARDED_FOR")
        If String.IsNullOrEmpty(sIPAddress) Then
            Return context.Request.ServerVariables("REMOTE_ADDR")
        Else
            Dim ipArray As String() = sIPAddress.Split(New [Char]() {","c})
            Return ipArray(0)

        End If
    End Function
    Public Sub GetFilesFromDirectory(ByVal DirPath As String)
        Try
            Dim cou As Integer
            cou = 0
            Dim Dir As New DirectoryInfo(DirPath)
            Dim FileList As FileInfo() = Dir.GetFiles("*.aspx", SearchOption.TopDirectoryOnly)
            For Each FI As FileInfo In FileList
                '  lblme.Text = lblme.Text & FI.FullName & "<br/>"
                ' Response.Write("<a href = '" & FI.FullName & "'>" & "</a>")
                cou = cou + 1
                'lblinfo.Text &= " " & cou & ". "
                'lblinfo.Text &= ("<a href=""" & FI.Name & """>" & FI.Name & "</a>") & "<br/>"
                mycoll.Add(FI.Name)
            Next
        Catch ex As Exception
            lblinfo.Text = ex.Message
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Literal1.Text = "WELCOME DEAR USER : " & Session("User")
        'Dim query As String
        'query = "Select sid,sname from studinfo"
        'Dim myobj As New myconnection
        'Dim dt As New DataTable
        'dt = myobj.getdata(query)
        'RadioButtonList1.DataSource = dt
        'RadioButtonList1.DataTextField = "sname"
        'RadioButtonList1.DataValueField = "sid"
        'RadioButtonList1.DataBind()
        ' Response.Write("CONNECTION STRING IS:::::  ")
        'Response.Write(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(0).ToString)
        'Response.Write("CONNECTION STRING IS:::::  ")
        'Response.Write(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(2).ToString)
       
        If Not Page.IsPostBack Then
            'Dim thislbl As Label = TryCast(Me.Master.FindControl("lblMenu"), Label)
            'Application("Status") = "Update Profile"

            Dim CK As HttpCookie = Request.Cookies("samples")
            Dim r As New Drawing.Color
            If CK IsNot Nothing Then
                Dim usname, uniqueid, logintime, studentid, stuname As String
                usname = CK.Values("Name")
                uniqueid = CK.Values("UniqueID")
                studentid = CK.Values("StudentID")
                stuname = CK.Values("StudentName")
                logintime = CK.Values("Time")
                Session("studiv") = CK.Values("StudentDiv")
                r = Drawing.Color.FromName(CK.Values("colo"))
                lblinfo.BackColor = r
                lblRedirect.BackColor = r
                lblinfo.ForeColor = Drawing.Color.Black

                ' WEBSERVICE GREETING DEMO ADDED HERE
                Dim myobj As New wsdtybca.tybcadiv1
                Dim greetstr As String = ""
                greetstr = myobj.Greetings(stuname)

                lblinfo.Text = "Greetings.. " & greetstr & ". How are you. <br> YOU VISITED Last Time on : " & logintime
                lblinfo.Text &= "<br>Please Wait......"
                Session("User") = usname
                Session("uidno") = uniqueid
                Session("studid") = studentid
                Session("stuname") = stuname
                Dim dtm As New DateTime
                dtm = DateTime.Now.ToString()
                Session("Ltime") = dtm.ToString
                'RANDOM PAGE CODE
                Dim path As String = Server.MapPath("~\")
                GetFilesFromDirectory(path)
                'lblRandom.Text = "count is : " & mycoll.Count
                Dim intvalue As Integer = CInt(Int(((mycoll.Count * Rnd() * 100) / 100) + 1))
                Dim randurl As String = mycoll(intvalue - 1).ToString
                SaveData()
                'CODE BEFORE 14/08/2014
                'Response.Write("TEST " & Session("uidno") & "USERNAME " & Session("User"))
                'Response.Write("USERNAME " & usname & "UNIQUE ID " & uniqueid)

                'this is my custom rand url
                ' randurl = "ListofFiles.aspx"

                lblRedirect.Text = "<a href=" & randurl & ">" & randurl & "</a>"

                'MESSSAGE FOR UPDATING PROFILE IMAGE
                Dim imgname As String = Session("simage") 'Profile.STUDENT_DETAILS.simage
                Dim strimg As String = "~\profilephotos\" & imgname

                Dim myFilePath As String = Server.MapPath(strimg)
                '  lblMySql.Text = myFilePath
                If File.Exists(myFilePath) Then
                    Image2.Visible = True
                    Image2.AlternateText = "Your Photo"
                    Image2.ToolTip = "Your Photo"
                    Image2.BorderStyle = BorderStyle.Groove
                    Image2.BorderWidth = 10
                    Image2.ImageUrl = strimg
                Else
                    Image2.Visible = True
                    Image2.AlternateText = "Please Upload Your Photo"
                    Image2.ToolTip = "Please Upload Your Photo"
                    Image2.BorderStyle = BorderStyle.Groove
                    Image2.BorderWidth = 10
                    Image2.ImageUrl = "~\profilephotos\001.jpg"

                End If
                Response.AppendHeader("REFRESH", "10;URL=" & randurl)
            Else
                Response.Redirect("LoginDemo.aspx")
            End If
        Else

        End If

    End Sub
End Class
