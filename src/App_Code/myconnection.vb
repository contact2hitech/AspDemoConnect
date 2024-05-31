Public Class myconnection
    Dim cn As New SqlConnection
    Dim cn1 As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da1 As New SqlDataAdapter
    Dim ds As New DataSet
    Dim cnmysqlcred As New MySqlConnection
    Dim cnmysqlcred1 As New MySqlConnection
    Dim cnmysql As New MySqlConnection
    Dim mysqlcmd As New MySqlCommand
    Dim mysqlda1 As New MySqlDataAdapter
    Dim mysqlds As New DataSet
    Dim i As Integer
    Public Sub New()
        'cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\mySql.mdf;Integrated Security=True;User Instance=True")
        cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
        cn1 = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql1").ConnectionString)

        ' cnmysql = New MySqlConnection("server=192.168.10.227;user id=hpp;database=serverusers;Password=12346;")
        cnmysqlcred = New MySqlConnection("server=172.30.58.228;user id=hpp;database=phproot;Password=321123@;")
        cnmysqlcred1 = New MySqlConnection("server=172.30.58.228;user id=hpp;Password=Amroli987;")
    End Sub
    Public Function getdata(ByVal qry As String) As DataTable
        cmd = New SqlCommand(qry, cn)
        da1 = New SqlDataAdapter(cmd)
        ds = New DataSet
        da1.Fill(ds)
        Return ds.Tables(0)
    End Function
    
    Public Function getnewid() As Integer
        Dim courec As Integer
        Dim coustr As String = "select count(uid) from reg_details"
        cmd = New SqlCommand(coustr, cn)
        cn.Open()
        courec = CInt(cmd.ExecuteScalar())
        cn.Close()
        If courec > 0 Then
            Dim str As String
            str = "select max(uid) from reg_details"
            Dim no As Integer
            cmd = New SqlCommand(str, cn)
            cn.Open()
            no = CInt(cmd.ExecuteScalar())
            cn.Close()
            Return no + 1
        Else
            Return 1
        End If


    End Function

    Public Function executedata(ByVal qry As String) As Integer
        Try
            cmd = New SqlCommand(qry, cn)
            Dim no As Integer
            If cn.State = ConnectionState.Open Then
                cn.Close()
            End If
            cn.Open()
            no = cmd.ExecuteNonQuery()
            cn.Close()
            Return no
        Catch ex As Exception
            Return 0
        End Try

    End Function

    Public Function GetMysqlDataCred(ByVal mysqlqry As String) As String
        Try
            Dim credstr As String
            If cnmysqlcred.State = Data.ConnectionState.Open Then
                cnmysqlcred.Close()
            End If
            cnmysqlcred.Open()
            mysqlcmd.CommandType = CommandType.Text
            mysqlcmd.CommandText = mysqlqry
            mysqlcmd.Connection = cnmysqlcred
            mysqlda1 = New MySqlDataAdapter(mysqlcmd)
            mysqlda1.Fill(mysqlds, "newidpass")

            If mysqlds.Tables("newidpass").Rows.Count >= 1 Then
                credstr = "UserName : " & mysqlds.Tables("newidpass").Rows(0).Item(0).ToString & "<br> Password : " & mysqlds.Tables("newidpass").Rows(0).Item(1).ToString
                credstr &= "<br>Connection String : ""server=172.30.58.223;database=" & mysqlds.Tables("newidpass").Rows(0).Item(0).ToString().ToLower & ";<br>Username=" & mysqlds.Tables("newidpass").Rows(0).Item(0).ToString & ";password=" & mysqlds.Tables("newidpass").Rows(0).Item(1).ToString & ";"""
            Else
                credstr = "No Records of Username Password. Contact Administrator "
            End If
            Return credstr
        Catch ex As Exception
            Return ex.Message
        End Try

    End Function

    Public Property test() As String
        Get
            Dim str As String = ""
            Return str
        End Get
        Set(ByVal value As String)

        End Set
    End Property

    Public Property streng() As Integer
        Get
            Return i
        End Get
        Set(ByVal value As Integer)
            i = value
        End Set
    End Property
    'function to get database name , table name dynamically. if dbname then true , else false then query change 
    Public Function getalltablenamesmysql(ByVal schematype As Boolean, Optional ByVal dbname As String = "", Optional ByVal tblname As String = "") As DataTable
        Dim dt As DataTable
        If schematype Then
            cnmysqlcred1 = New MySqlConnection("server=172.30.58.223;user id=hpp;database=" & dbname & ";Password=@789;")
            cnmysqlcred1.Open()
            dt = cnmysqlcred1.GetSchema("Tables")
            cnmysqlcred1.Close()
            Return dt
        Else
            cnmysqlcred1 = New MySqlConnection("server=172.30.58.223;user id=hpp;database=" & dbname & ";Password=@789;")
            cnmysqlcred1.Open()
            'dt = cnmysqlcred1.GetSchema(tblname)
            Dim da As New MySqlDataAdapter("select * from " & tblname & ";", cnmysqlcred1)
            'Dim dt As New DataTable
            Dim ds As New DataSet
            da.Fill(ds)
            cnmysqlcred1.Close()
            Return ds.Tables(0)
        End If

    End Function
End Class
