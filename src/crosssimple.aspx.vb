Imports System.Data
Imports System.Data.SqlClient
Partial Class crosssimple
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("constrsql").ConnectionString.ToString)
        Dim cmd As New SqlCommand("select * from reg_details", cn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New Data.DataSet
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

    End Sub
    'Public Shared Function Encrypt(ByVal toEncrypt As String, ByVal useHashing As Boolean) As String
    '    Dim keyArray As Byte()
    '    Dim toEncryptArray As Byte() = UTF8Encoding.UTF8.GetBytes(toEncrypt)

    '    Dim settingsReader As System.Configuration.AppSettingsReader = New AppSettingsReader()
    '    ' Get the key from config file

    '    Dim key As String = DirectCast(settingsReader.GetValue("SecurityKey", GetType([String])), String)
    '    'System.Windows.Forms.MessageBox.Show(key);
    '    'If hashing use get hashcode regards to your key
    '    If useHashing Then
    '        Dim hashmd5 As New MD5CryptoServiceProvider()
    '        keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key))
    '        'Always release the resources and flush data
    '        ' of the Cryptographic service provide. Best Practice

    '        hashmd5.Clear()
    '    Else
    '        keyArray = UTF8Encoding.UTF8.GetBytes(key)
    '    End If

    '    Dim tdes As New TripleDESCryptoServiceProvider()
    '    'set the secret key for the tripleDES algorithm
    '    tdes.Key = keyArray
    '    'mode of operation. there are other 4 modes.
    '    'We choose ECB(Electronic code Book)
    '    tdes.Mode = CipherMode.ECB
    '    'padding mode(if any extra byte added)

    '    tdes.Padding = PaddingMode.PKCS7

    '    Dim cTransform As ICryptoTransform = tdes.CreateEncryptor()
    '    'transform the specified region of bytes array to resultArray
    '    Dim resultArray As Byte() = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length)
    '    'Release resources held by TripleDes Encryptor
    '    tdes.Clear()
    '    'Return the encrypted data into unreadable string format
    '    Return Convert.ToBase64String(resultArray, 0, resultArray.Length)
    'End Function
    'Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
    '    'count no of rows
    '    Dim cn As New SqlConnection(ConfigurationManager.ConnectionStrings("constrsql").ConnectionString.ToString)
    '    Dim cmd As New SqlCommand("select * from reg_details", cn)
    '    Dim da As New SqlDataAdapter(cmd)
    '    Dim ds As New Data.DataSet
    '    da.Fill(ds)

    '    If ds.Tables(0).Rows.Count > 0 Then
    '        Dim i As Integer = 0
    '        Dim cou As Integer = 0
    '        For i = 0 To ds.Tables(0).Rows.Count - 1
    '            Dim encryptpassstr As String = Encrypt(ds.Tables(0).Rows(i).Item(7).ToString, True)
    '            Dim obj As New myconnection
    '            Dim updateqry As String
    '            updateqry = "UPDATE [Demos].[dbo].[reg_details] SET [upassword] ='" & encryptpassstr & "' WHERE uid =" & ds.Tables(0).Rows(i).Item(0).ToString & ""
    '            'Response.Write(updateqry)
    '            cou = obj.executedata(updateqry)
    '            cou = cou + 1
    '        Next
    '        Response.Write("TOTAL RECORDS UPDATED :" & cou)
    '    End If


    'End Sub

   
End Class
