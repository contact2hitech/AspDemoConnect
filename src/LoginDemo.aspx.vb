Partial Class LoginDemo
    Inherits System.Web.UI.Page
    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Literal1.Text = ""
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session.Abandon()
        'Session("User") = ""
        'Session("uidno") = ""
        'Session.Abandon()
        'Session.Clear()
        'txtUname.Focus()
        'Dim ck As New HttpCookie("SAMPLE")
        'ck.Expires = DateTime.Now.AddDays(-1)
        'Response.Cookies.Add(ck)
        'Label1.Font.Name = ConfigurationManager.AppSettings("font")
        'Label2.Font.Name = ConfigurationManager.AppSettings("font")
        'Me.Form.DefaultButton = Me.btnlogin.UniqueID
    End Sub
    '========================
    'md5 decryption function
    '========================
    Public Shared Function Decrypt(ByVal cipherString As String, ByVal useHashing As Boolean) As String
        Dim keyArray As Byte()
        'get the byte code of the string

        Dim toEncryptArray As Byte() = Convert.FromBase64String(cipherString)

        Dim settingsReader As System.Configuration.AppSettingsReader = New AppSettingsReader()
        'Get your key from config file to open the lock!
        Dim key As String = DirectCast(settingsReader.GetValue("SecurityKey", GetType([String])), String)

        If useHashing Then
            'if hashing was used get the hash code with regards to your key
            Dim hashmd5 As New MD5CryptoServiceProvider()
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key))
            'release any resource held by the MD5CryptoServiceProvider

            hashmd5.Clear()
        Else
            'if hashing was not implemented get the byte code of the key
            keyArray = UTF8Encoding.UTF8.GetBytes(key)
        End If

        Dim tdes As New TripleDESCryptoServiceProvider()
        'set the secret key for the tripleDES algorithm
        tdes.Key = keyArray
        'mode of operation. there are other 4 modes. 
        'We choose ECB(Electronic code Book)

        tdes.Mode = CipherMode.ECB
        'padding mode(if any extra byte added)
        tdes.Padding = PaddingMode.PKCS7

        Dim cTransform As ICryptoTransform = tdes.CreateDecryptor()
        Dim resultArray As Byte() = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length)
        'Release resources held by TripleDes Encryptor                
        tdes.Clear()
        'return the Clear decrypted TEXT
        Return UTF8Encoding.UTF8.GetString(resultArray)
    End Function

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        '' CHECK USERNAME PWD IN DB. IF SUCCESS THEN CREATE SESSION
        'If TextBox1.Text = "" Or TextBox2.Text = "" Then
        '    lblInfo.Text = "Please See Details"
        'Else
        '    'CHECH UR USER DETAILS
        '    Session("Ruser") = TextBox1.Text
        '    Dim dtm As New DateTime
        '    dtm.ToString("ddMMyyyy-HHmmss")
        '    dtm = DateTime.Now.TimeOfDay.ToString
        '    Session("Ltime") = dtm.ToString
        '    Profile.fname = TextBox1.Text
        '    Profile.lname = TextBox2.Text
        '    Response.Redirect("ListofFiles.aspx")
        'End If

        'MsgBox(ConfigurationManager.AppSettings("myname"))
        'MsgBox(ConfigurationManager.AppSettings("mywebservice.Service"))

        '  Dim constr As String = System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(3).ConnectionString
        ' MsgBox(constr)
        ' MsgBox(ConfigurationManager.AppSettings("myname"))
        'MsgBox(System.Web.Configuration.WebConfigurationManager.ConnectionStrings(1).ConnectionString.ToString)
        'MsgBox(System.Web.Configuration.WebConfigurationManager.ConnectionStrings(2).ConnectionString.ToString)
        'MsgBox(System.Web.Configuration.WebConfigurationManager.ConnectionStrings(3).ConnectionString.ToString)

        Dim query As String
        'query = "Select upassword from user_info where uname='" & txtUname.Text & "'"
        query = "Select upassword,[student_id],uid,[name],emailid,mobile,city,uname,div,simage,amount_bal,account_type from reg_details where emailid='" & txtUname.Text & "'"
        Dim myobj As New myconnection
        'DIM CN
        'DIM CMD
        'GIVE QUERY TO COMMAND AND CN

        'CMD .EXECUTENONQUERY

        'DIM DA 
        'DIM DS
        'DA.FILL(DS)
        'DS.TABLE(0)
        Dim dt As New DataTable
        'dt = ds.table(0)
        dt = myobj.getdata(query)
        'sample code to check record in gridview
        'GridView1.DataSource = dt
        'GridView1.DataBind()

        If dt.Rows.Count > 0 Then
            'code for checking md5 encryption
            '================================
            'Dim encryptpassstr As String = Md5AddSecret(txtUpass.Text)
            'Response.Write(encryptpassstr)
            Dim decryptpassstr As String = Decrypt(dt.Rows(0).Item(0).ToString, True)
            ' Response.Write(decryptpassstr)

            If decryptpassstr = txtUpass.Text Then
                'login success
                'store profile data
                'Profile.STUDENT_DETAILS.upassword = dt.Rows(0).Item(0).ToString

                'sample commenting code for resolving error on 5/7/2022

                'Profile.STUDENT_DETAILS.student_id = dt.Rows(0).Item(1).ToString
                'Profile.STUDENT_DETAILS.uid = dt.Rows(0).Item(2).ToString
                'Profile.STUDENT_DETAILS.name = dt.Rows(0).Item(3).ToString
                'Profile.STUDENT_DETAILS.emailid = dt.Rows(0).Item(4).ToString
                'Profile.STUDENT_DETAILS.mobile = dt.Rows(0).Item(5).ToString
                'Profile.STUDENT_DETAILS.city = dt.Rows(0).Item(6).ToString
                'Profile.STUDENT_DETAILS.uname = dt.Rows(0).Item(7).ToString
                'Profile.STUDENT_DETAILS.div = dt.Rows(0).Item(8).ToString
                'Profile.STUDENT_DETAILS.simage = dt.Rows(0).Item(9).ToString
                'Profile.STUDENT_DETAILS.amount_bal = dt.Rows(0).Item(10).ToString
                'Profile.STUDENT_DETAILS.account_type = dt.Rows(0).Item(11).ToString

                'create session
                'give him entry to website
                Session("User") = dt.Rows(0).Item(4).ToString
                Session("uidno") = dt.Rows(0).Item(2).ToString
                Session("studid") = dt.Rows(0).Item(1).ToString
                Session("stuname") = dt.Rows(0).Item(3).ToString
                Session("studiv") = dt.Rows(0).Item(8).ToString
                Session("simage") = dt.Rows(0).Item(9).ToString
                'Response.Write(Session("uidno"))
                Dim dtm As New DateTime
                ' dtm = DateTime.Now.ToString("dd MM yyyy  hh:mm:ss tt")
                dtm = DateTime.Now.ToString

                Session("Ltime") = dtm.ToString("dd MM yyyy  hh:mm:ss tt")
                'Session("Ltime") = dt.Rows(0).Item(1).ToString

                'cookie code hidden
                If chkRemember.Checked Then
                    Dim ck As New HttpCookie("samples")
                    ck.Values.Add("Name", txtUname.Text)
                    ck.Values.Add("UniqueID", dt.Rows(0).Item(2).ToString)
                    ck.Values.Add("StudentID", Session("studid"))
                    ck.Values.Add("StudentName", Session("stuname"))
                    ck.Values.Add("StudentDiv", Session("studiv"))
                    ck.Values.Add("Time", DateTime.Now.ToString())
                    ck.Values.Add("colo", "Aqua")
                    ck.Values.Add("HELLO", Server.MapPath("image"))
                    ck.Expires = DateTime.Now.AddDays(7)
                    Response.Cookies.Add(ck)

                Else
                    Dim ck As New HttpCookie("samples")
                    ck.Values.Add("Name", txtUname.Text)
                    ck.Values.Add("UniqueID", dt.Rows(0).Item(2).ToString)
                    ck.Values.Add("StudentID", Session("studid"))
                    ck.Values.Add("StudentName", Session("stuname"))
                    ck.Values.Add("StudentDiv", Session("studiv"))
                    ck.Values.Add("Time", DateTime.Now.ToString("dd MM yyyy  hh:mm:ss tt"))
                    ck.Values.Add("colo", "lime")
                    ck.Expires = DateTime.Now.AddHours(5)
                    Response.Cookies.Add(ck)
                End If
                'Response.Write("HPP DATA UID: " & Session("uidno") & "USERNAME " & Session("User"))

                Response.Redirect("Welcome.aspx", True)

                'If Request.QueryString("lastpage") = "" Then
                '    Response.Redirect("Welcome.aspx", False)
                'Else

                '    Response.Redirect(Request.QueryString("lastpage"))
                'End If


                'Literal1.Text = "LOGIN SUCCESS"
            Else
                Literal1.Text = "PASSWORD INCORRECT"
            End If
        Else
            Literal1.Text = "USER DOES NOT EXIST"
        End If
    End Sub


End Class
