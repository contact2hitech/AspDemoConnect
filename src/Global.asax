<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        
        'Response.Write("started")
        ' Code that runs on application startup
        'sample code for getting rerror number from database
        Try
            Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
            Dim cmd As New SqlCommand
            Dim da1 As New SqlDataAdapter
            Dim ds As New DataSet
            Dim courec As Integer
            Dim coustr As String = "select count(err_id) from err_data"
            cmd = New SqlCommand(coustr, cn)
            cn.Open()
            courec = CInt(cmd.ExecuteScalar())
            cn.Close()
            If courec > 0 Then
                Dim str As String
                str = "select max(err_id) from err_data"
                Dim no As Integer
                cmd = New SqlCommand(str, cn)
                cn.Open()
                no = CInt(cmd.ExecuteScalar())
                cn.Close()
                Application("Error") = no
            Else
                Application("Error") = 1
            End If
            
        Catch ex As Exception

        End Try
        Application("visitorno") = 0
        ' Application("visitorno") = 0
        Application("name") = "ASP.NET DEMOS FOR SUTEX BCA STUDENTS for Year 2017-18"
        
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
        
        Application.Lock()
        Application("Error") = Application("Error") + 1
        Application("ErrorMessage") = Server.GetLastError.Message.ToString
        Application("ErrorInDetails") = Server.GetLastError.ToString
        Application("ErrorDetailsInner") = Server.GetLastError.InnerException.Message.ToString
        Application.UnLock()
        'insert error into database
        
        ' Dim exa As Exception = Server.GetLastError
        ' Response.Write("GLOBAL HANDLING : ERROR NO: " & Application("Error") & " : " & exa.Message)
        'Server.ClearError()
        
        
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        
        ' Code that runs when a new session is started
        Application.Lock()
        Application("visitorno") = Int(Application("visitorno")) + 1
        Application.UnLock()
        'Response.Write("SESSION CREATED: VISIT NO : " & Convert.ToInt32(Application("visitorno")) & "<br>")
        'Response.Write("<br>TOTAL OBJECTS: " & Application.Count)
        'Response.Write("<br>ITEM  1: " & Application.Item(0).ToString)
        'Response.Write("<br>ITEM  3: " & Application.Item(2).ToString)
             
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
        ' Application("Status") = "Registration"
        Application.Lock()
        Application("visitorno") = Int(Application("visitorno")) - 1
        Application.UnLock
        'Response.Write("SESSION DESTROYED: VISIT NO : " & Convert.ToInt32(Application("visitorno")) & " CONT " & Application.Count)
    End Sub
       
</script>