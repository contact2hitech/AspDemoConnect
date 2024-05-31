
Imports System.IO
Imports myconnection
Partial Class UpdateProfile
    Inherits System.Web.UI.Page
    Public Shared IUID As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Response.Write("TEST " & Session("uidno") & "USERNAME " & Session("User"))

        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx?lastpage=" & System.IO.Path.GetFileName(Request.Url.AbsoluteUri))
        Else
            If Not Page.IsPostBack Then
                'sample code for OOPS 



                Dim str As String = System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString
                Dim cn As New SqlConnection(str)
                'multiple account code

                Dim cmd As New SqlCommand("select * from reg_details where uid='" & Session("uidno") & "'", cn)
                Dim da As New SqlDataAdapter(cmd)
                Dim ds As New Data.DataSet
                da.Fill(ds)
                'If ds.Tables(0).Rows.Count >= 1 Then
                '    Label1.Text = "You have " & ds.Tables(0).Rows.Count.ToString & " Accounts."
                'End If
                'NEW 2016 CODE FOR CLASS BASED 

                Dim myobj1 As New myconnection()

                Dim mydt As New DataTable
                mydt = myobj1.getdata("select * from reg_details where uid='" & Session("uidno") & "'")
                If mydt.Rows.Count > 1 Then
                    Label1.Text = "You Have More Than 1 acc."
                End If


                ''multiple account code over


                'mysql databse username password
                Dim myobj As New myconnection
                Dim mysqlqry As String = "select * from newusers where id='TYBCA" & Session("studid") & "'"
                ''Response.Write(mysqlqry)
                ''Response.Write(myobj.GetMysqlDataCred(mysqlqry))

                'mysql username password
                '******hpp change 26/06/2018
                lblMySql.Text = myobj.GetMysqlDataCred(mysqlqry)
                ' '' If lblMySql.Text.Contains("TYBCA") Then

                'End If
                'PROFILE DATA FROM WEBCONFIG
                'site load time increased a lot. hence once again commenting profile data code

                'IUID = Profile.STUDENT_DETAILS.uid
                'txtName.Text = Profile.STUDENT_DETAILS.name
                'txtUname.Text = Profile.STUDENT_DETAILS.emailid
                'txtCity1.Text = Profile.STUDENT_DETAILS.city
                'txtMob.Text = Profile.STUDENT_DETAILS.mobile
                'txtMob.Text.Trim()
                'txtEmail.Text = Profile.STUDENT_DETAILS.emailid
                ''txtUpass.Text = Profile.STUDENT_DETAILS.upassword
                'txtCupass.Text = Profile.STUDENT_DETAILS.student_id
                'DrpDiv.SelectedValue = Profile.STUDENT_DETAILS.div

                'reading data from database

                IUID = ds.Tables(0).Rows(0).Item(0)
                txtName.Text = ds.Tables(0).Rows(0).Item(2).ToString
                txtUname.Text = ds.Tables(0).Rows(0).Item(3).ToString
                txtCity1.Text = ds.Tables(0).Rows(0).Item(5).ToString
                txtMob.Text = ds.Tables(0).Rows(0).Item(4).ToString
                txtMob.Text.Trim()
                txtEmail.Text = ds.Tables(0).Rows(0).Item(3).ToString
                txtUpass.Text = ds.Tables(0).Rows(0).Item(7).ToString
                txtCupass.Text = ds.Tables(0).Rows(0).Item(1).ToString
                Dim imgid As String = mydt.Rows(0).Item(8).ToString
                DrpDiv.SelectedValue = ds.Tables(0).Rows(0).Item(9).ToString
                '====================================================================================================================
                'Image name from Database ===== FIRST it is 001.JPG After Profile Update it will be ==== YEARROLLNO.jpg (2016999.jpg)
                '====================================================================================================================
                Dim imgname As String = imgid
                Dim strimg As String = "~\profilephotos\" & imgname

                Dim myFilePath As String = Server.MapPath(strimg)
                '  lblMySql.Text = myFilePath
                If File.Exists(myFilePath) Then
                    Image1.AlternateText = txtName.Text & " 's Image"
                    Image1.ToolTip = txtName.Text & " 's Image"
                    Image1.BorderStyle = BorderStyle.Groove
                    Image1.BorderWidth = 10
                    Image1.ImageUrl = strimg
                Else
                    Image1.AlternateText = "Please Upload Your Photo"
                    Image1.ToolTip = "Please Upload Your Photo"
                    Image1.BorderStyle = BorderStyle.Groove
                    Image1.BorderWidth = 10
                    Image1.ImageUrl = "~\profilephotos\001.jpg"

                End If
                If txtCupass.Text = 0 Then
                    lblStatus.Text = "PLEASE UPDATE YOUR ROLL NO..!"
                    txtCupass.Text = ""
                End If
            End If
        End If
    End Sub
    Public Shared Function Encrypt(ByVal toEncrypt As String, ByVal useHashing As Boolean) As String
        Dim keyArray As Byte()
        Dim toEncryptArray As Byte() = UTF8Encoding.UTF8.GetBytes(toEncrypt)

        Dim settingsReader As System.Configuration.AppSettingsReader = New AppSettingsReader()
        ' Get the key from config file

        Dim key As String = DirectCast(settingsReader.GetValue("SecurityKey", GetType([String])), String)
        'System.Windows.Forms.MessageBox.Show(key);
        'If hashing use get hashcode regards to your key
        If useHashing Then
            Dim hashmd5 As New MD5CryptoServiceProvider()
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key))
            'Always release the resources and flush data
            ' of the Cryptographic service provide. Best Practice

            hashmd5.Clear()
        Else
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

        Dim cTransform As ICryptoTransform = tdes.CreateEncryptor()
        'transform the specified region of bytes array to resultArray
        Dim resultArray As Byte() = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length)
        'Release resources held by TripleDes Encryptor
        tdes.Clear()
        'Return the encrypted data into unreadable string format
        Return Convert.ToBase64String(resultArray, 0, resultArray.Length)
    End Function
    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        Dim obj As New myconnection
        Dim updateqry As String
        Dim imgname As String = Now.Year & txtCupass.Text & ".jpg"
        Dim encryptpassstr As String = Encrypt(txtUpass.Text, True)

        updateqry = "UPDATE [Demos].[dbo].[reg_details] SET [student_id] =" & txtCupass.Text.Trim & ",[name] ='" & txtName.Text.Trim & "',[emailid] ='" & txtEmail.Text.Trim & "',[mobile] =" & txtMob.Text.Trim & ",[city] ='" & txtCity1.Text.Trim & "',[uname] ='" & txtEmail.Text.Trim & "',[upassword] ='" & encryptpassstr & "',[simage] = '" & imgname & "',[div]=" & DrpDiv.SelectedValue & " WHERE uid =" & Session("uidno") & ""
        'Response.Write(updateqry)
        Dim cou As Integer
        cou = obj.executedata(updateqry)
        If cou > 0 Then
            Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('UPDATED !!!')</SCRIPT>")
            lblStatus.Text = "UPDATE SUCCESS"
        Else
            Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Problem !!!')</SCRIPT>")
            lblStatus.Text = "UPDATE PROBLEM"
        End If
    End Sub


    Protected Sub btnUploadPic_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUploadPic.Click
        Dim savedir As String = "profilephotos\"
        Dim apppath As String = Request.PhysicalApplicationPath
        'Response.Write("APPLICATION PATH IS:  " & apppath)
        If FileUpload1.HasFile Then
            'new
            Try

                If FileUpload1.PostedFile.ContentType.ToLower = "image/jpg" Or FileUpload1.PostedFile.ContentType.ToLower = "image/jpeg" Or FileUpload1.PostedFile.ContentType.ToLower = "image/pjpeg" Or FileUpload1.PostedFile.ContentType.ToLower = "image/gif" Or FileUpload1.PostedFile.ContentType.ToLower = "image/x-png" Or FileUpload1.PostedFile.ContentType.ToLower = "image/png" Then
                    If FileUpload1.PostedFile.ContentLength < 1000000 Then

                        Dim extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
                        'Dim savepath As String = apppath & savedir & Server.HtmlEncode(FileUpload1.FileName)
                        Dim savepath As String = apppath & savedir & Now.Year & txtCupass.Text.Trim & extension
                        FileUpload1.SaveAs(savepath)
                        'lblImageUploadStatus.Text = savepath & "<br>"
                        'lblImageUploadStatus.Text = "FILE UPLOADED SUCCESSFULLY as :<br> " & savepath & "<br>" & Session("studid") & extension
                        lblImageUploadStatus.Text = "Profile Picture Updated"
                        ' Response.Redirect("UpdateProfile.aspx")
                        Response.AppendHeader("REFRESH", "2;URL=" + "UpdateProfile.aspx")
                    Else
                        lblImageUploadStatus.Text = "Upload status: The file has to be less than 1 Mb!"
                    End If
                Else
                    lblImageUploadStatus.Text = "Upload status: Only Image files are accepted!"
                End If
            Catch ex As Exception
                lblImageUploadStatus.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
            End Try

            'old
        Else
            lblImageUploadStatus.Text = "PLEASE SELECT A FILE "
        End If

    End Sub
End Class
