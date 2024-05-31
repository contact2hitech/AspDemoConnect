Partial Class RegistrationDemo
    Inherits System.Web.UI.Page
    Dim str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If txtEmail.Text = "" Then
        Else
            txtUname.Text = txtEmail.Text
        End If
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Page.Theme = str
    End Sub
    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        clearall()
    End Sub
    Private Sub clearall()
        txtCity1.Text = ""
        txtCupass.Text = ""
        txtName.Text = ""
        txtEmail.Text = ""
        txtMob.Text = ""
        ' txtUname.Text = ""
        txtUpass.Text = ""
    End Sub
    'OBSELETE CODE
    'Public Function Md5AddSecret(ByVal strChange As String) As String
    '    Dim pass As Byte() = Encoding.UTF8.GetBytes(strChange)
    '    Dim md5 As MD5 = New MD5CryptoServiceProvider()
    '    Dim strPassword As String = Encoding.UTF8.GetString(md5.ComputeHash(pass))
    '    Return strPassword
    'End Function
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
    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        'GET NEXT ID
        Dim obj As New myconnection
        Dim no As Integer
        no = obj.getnewid()
        'Insertquery
        Dim obj1 As New myconnection
        Dim encryptpassstr As String = Encrypt(txtUpass.Text, True)
        Dim insertquery As String

        insertquery = "insert into reg_details values (" & no & ",0,'" & txtName.Text & "','" & txtEmail.Text & "','" & txtMob.Text & "','" & LCase(txtCity1.Text) & "','" & txtEmail.Text & "','" & encryptpassstr & "','001.jpg',0,10000,'SAVINGS')"
        'MsgBox(insertquery)
        Dim cou As Integer
        'Dim paramuser As New SqlParameter
        'paramuser.ParameterName = "@myusername"
        'paramuser.Value = txtName.Text
        'Dim cmd1 As New SqlCommand("insertquery", cn)
        'cmd1.CommandType = Data.CommandType.StoredProcedure
        'cmd1.Parameters.Add(paramuser)
        'Dim no1 As Integer
        'no1 = cmd1.ExecuteNonQuery()
        cou = obj.executedata(insertquery)
        If cou > 0 Then
            Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Registration Successful !!!')</SCRIPT>")
            lblStatus.Text = "Registration Successfull"
            Response.Redirect("LoginDemo.aspx")
            ' clearall()

        Else
            Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Problem !!!')</SCRIPT>")
            lblStatus.Text = "Registration Incomplete"
        End If

    End Sub

    Protected Sub txtEmail_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtEmail.TextChanged
        Dim mycn As New myconnection
        Dim dt As New Data.DataTable
        dt = mycn.getdata("select * from reg_details where emailid ='" & txtEmail.Text & "'")
        If dt.Rows.Count > 0 Then
            txtEmail.Focus()
            txtEmail.Text = ""
            'btnregister.Enabled = False
            lblUser.Text = "NOT Available..!!!"
        Else
            ' btnregister.Enabled = True
            lblUser.Text = "USER ID is Available."
        End If

        'Dim strSelect As String = "SELECT * FROM reg_details WHERE emailid like '" & txtEmail.Text & "%'"
        'Dim COU As Integer
        'COU = mycn.executedata(strSelect)
        'If COU > 0 Then
        '    lblUser.Text = "not available"
        'Else
        '    lblUser.Text = "AVAILABLE"
        'End If


    End Sub
    Public Function UserNameChecker() As Boolean

        Dim mycn As New myconnection

        Dim strSelect As String = "SELECT * FROM reg_details WHERE emailid ='" & txtUname.Text & "'"
        Dim COU As Integer
        COU = mycn.executedata(strSelect)
        If COU > 0 Then
            Return True
        Else
            Return False
        End If


    End Function



End Class
