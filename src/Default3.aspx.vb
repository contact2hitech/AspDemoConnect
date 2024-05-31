Imports System.Data
Imports MySql.Data.MySqlClient
Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Response.Write("welcome php user " & "TYBCA" & Session("studid"))
        Dim cnmysqlcred As New MySqlConnection
        Dim mysqlcmd As New MySqlCommand
        Dim mysqlda1 As New MySqlDataAdapter
        Dim mysqlds As New DataSet

        'Dim cn As New MySqlConnection("server=192.168.10.227;user id=hpp;database=serverusers;Password=123456;")

        'Dim cmd As New MySqlCommand("select * from newidpass where uid='" & Session("phpusername") & "';", cn)
        'Dim da As New MySqlDataAdapter(cmd)
        'Dim ds As New Data.DataSet
        'da.Fill(ds)
        'GridView1.DataSource = ds.Tables(0)
        'GridView1.DataBind()
        Try
            Dim credstr As String

            If cnmysqlcred.State = Data.ConnectionState.Open Then
                cnmysqlcred.Close()
            End If
            cnmysqlcred.Open()
            mysqlcmd.CommandType = CommandType.Text
            'mysqlcmd.CommandText = "select * from newidpass where uid='TYBCA" & Session("studid") & "'"
            mysqlcmd.Connection = cnmysqlcred
            mysqlda1 = New MySqlDataAdapter(mysqlcmd)
            mysqlda1.Fill(mysqlds, "idpass")
            GridView1.DataSource = mysqlds.Tables(0)
            GridView1.DataBind()
            'If mysqlds.Tables("idpass").Rows.Count >= 1 Then
            '    credstr = "UserName : " & mysqlds.Tables("idpass").Rows(0).Item(0).ToString & "<br> Password : " & mysqlds.Tables("idpass").Rows(0).Item(1).ToString
            '    credstr &= "<br>Connection String : 'server=192.168.10.227;database=" & mysqlds.Tables("idpass").Rows(0).Item(0).ToString().ToLower & ";<br>Username=" & mysqlds.Tables("idpass").Rows(0).Item(0).ToString & ";password=" & mysqlds.Tables("idpass").Rows(0).Item(1).ToString & ";"""
            'Else
            '    credstr = "No Records of Username Password. Contact Administrator "
            'End If

        Catch ex As Exception


        End Try
    End Sub
End Class
