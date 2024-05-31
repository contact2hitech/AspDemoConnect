Partial Class MainMaster
    Inherits System.Web.UI.MasterPage

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        ' Dim config As Configuration = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~/")
        ' 'Get the required section of the web.config file by using configuration object.
        ' Dim pages As PagesSection = DirectCast(config.GetSection("system.web/pages"), PagesSection)
        ''Update the new values.
        ' pages.Theme = DropDownList1.SelectedItem.Text.ToString()
        ' 'save the changes by using Save() method of configuration object.
        ' If Not pages.SectionInformation.IsLocked Then
        '     config.Save()
        '     Response.Redirect("Default.aspx")
        ' Else
        '     Response.Write("<script>alert('Could not save configuration')</script>")
        ' End If
    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            'lblPath.Text = "MY PHYSICAL PATH :" & Server.MapPath(Request.Path) & "<br>"
            lblPath0.Text = "MY VIRTUAL PATH :" & Request.Path
            'Page.Title = System.IO.Path.GetFileNameWithoutExtension(Request.Path) & " Page. Date: " & DateTime.Now

            If Session("User") = "" Then

                linklogin.HRef = "LoginDemo.aspx"
                lbllinklogin.Text = "Login"
                linkregister.HRef = "RegistrationDemo.aspx"

                'MainMaster.dialog.Visible = False

            Else
                lbllinklogin.Text = "Logout"
                linklogin.HRef = "LoginDemo.aspx"
                lbllinkregister.Text = "Update Profile"
                linkregister.HRef = "UpdateProfile.aspx"
                'MainMaster.dialog.Visible = False
                'ltlWelcome.Text = "Welcome  " & Session("stuname") & "<br> Today is " & Now.ToString("dd MMM yyyy")
                'dialog.Visible = False


                ''THIS IS FOR STUDENTS TASK IN ABSENSE

                'ltlWelcome.Text = "Welcome  " & Session("stuname") & "<br/>Your tasks for " & Now.ToString("dd MMM yyyy") & " are :"
                'ltlWelcome.Text &= "<br/><b>1.</b><a href=../ReferenceMaterials.aspx><b>Master Detail Concept Demo  </b></a></asp:Literal>"
                'ltlWelcome.Text &= "<br/><b>2.</b><a href=ContainerControls.aspx>Container Controls. <b>Panel & Placeholder</b></a></asp:Literal>"
                'ltlWelcome.Text &= "<br/><b>3.</b><a href=MmultiviewDemo.aspx>Container Controls. <b>Multiview</b></a></asp:Literal>"
                'ltlWelcome.Text &= "<br/><b>4.</b><a href=WizardDemo.aspx>Container Controls.<b> Wizard</b></a></asp:Literal>"
                'ltlWelcome.Text &= "<br/><b>5.</b><a href=UsercontrolDemo.aspx>Web User Control.<b> Drag n Drop</b></a></asp:Literal>"
                'ltlWelcome.Text &= "<br/><b>6.</b><a href=RuntimeUserControlDemo.aspx>Web User Control.<b> Runtime</b></a></asp:Literal>"
                'ltlWelcome.Text &= "<br/>Perform this Demos Today during Lab Session."

                'THIS IS FOR STUDENTS TASK IN ABSENSE

                'UPDATE WITH DYNAMIC EXAMPLES LIST FOR TASK
                '''''''''''''''''''''''''''''''''''''''''''
                'code for checking list of pending examples
                Dim xmlreader1 As XmlTextReader = New XmlTextReader(Server.MapPath("XMLListoffiles.xml"))
                Dim ds As New DataSet
                ds.ReadXml(xmlreader1)
                xmlreader1.Close()
                If ds.Tables(0).Rows.Count > 0 Then
                    'dialog.Visible = True
                    Dim i As Integer = 0
                    'lblout.Text = "Pending EXAMPLES ARE <br>"
                    'code for pending popup 201920
                    '  ltlWelcome.Text = "Welcome  " & Session("stuname") & "<br/>Your tasks for " & Now.ToString("dd MMM yyyy") & " are :<br>"
                    ' ltlWelcome.Text &= "Example No &  Name:           <br>"

                    'For i = 0 To ds.Tables(0).Rows.Count - 1
                    '    If ds.Tables(0).Rows(i).Item(2).ToString = "True" Then
                    '        ltlWelcome.Text &= "[" & i + 1 & "] <a href=" & ds.Tables(0).Rows(i).Item(1).ToString & ">" & ds.Tables(0).Rows(i).Item(1).ToString & "</a><br>"
                    '        'lblout.Text &= i + 1 & ". Example Name : " & ds.Tables(0).Rows(i).Item(1).ToString & "<br>"
                    '    End If
                    'Next
                Else
                    'dialog.Visible = False
                    'ltlWelcome.Visible = False
                    'DataList1.DataSource = Nothing
                    'DataList1.DataBind()
                End If
                'UPDATE WITH DYNAMIC EXAMPLES LIST FOR TASK
                ''''''''''''''''''''''''''''''''''''''''''

            End If

            Dim strpath As String = Server.MapPath(Request.Path)
            Dim strpath1 As String = strpath & ".vb"
            strpath = strpath '+ ".vb"
            ''strpath.Contains("LoginDemo.aspx") Or'
            If strpath.Contains("Moderator") Or strpath.Contains("zContact.aspx") Or strpath.Contains("Submission.aspx") Or strpath.Contains("forgetPassword.aspx") Then

                ContentPlaceHolder3.Visible = False
                mydiv.Visible = False
                mydiv1.Visible = False
                myleftdiv.Visible = False
                'mycustomnavigation.Visible = False
                myleftdivbottom.Visible = False

                'ltlcode.Text = ""
            Else
                Dim strcode As String = File.ReadAllText(strpath)
                ltlsource.Text = strcode
                Dim strcode1 As String = File.ReadAllText(strpath1)
                ltlcode.Text = strcode1

            End If
            If strpath.Contains("UpdateProfile") Or strpath.Contains("zContact") Or strpath.Contains("Money") Or strpath.Contains("Error") Or strpath.Contains("LoginDemo") Or strpath.Contains("forgetPassword.aspx") Then

            Else
                myleftdiv.Visible = True
                Dim mydi As New DirectoryInfo(Request.PhysicalApplicationPath)
                Dim filearray As Array = GetLastUpdatedFileInDirectory(mydi).ToArray
                Dim i As Integer
                Dim srcounter As Integer = 1


                If filearray.Length - 1 < 9 Then
                    For i = 1 To filearray.Length - 1
                        If filearray(i).ToString.Contains(".aspx") And Not filearray(i).ToString.Contains(".vb") Then
                            lblrecentfiles.Text &= srcounter & ". <a href=" & filearray(i).ToString & ">" & filearray(i).ToString & "</a> <br> "
                            srcounter += 1
                        Else
                        End If
                    Next
                Else
                    For i = 1 To 10
                        If filearray(i).ToString.Contains(".aspx") And Not filearray(i).ToString.Contains(".vb") Then
                            lblrecentfiles.Text &= srcounter & ". <a href=" & filearray(i).ToString & ">" & filearray(i).ToString & "</a> " & "<br> "
                            srcounter += 1
                        Else
                        End If
                    Next
                End If

            End If
        End If
    End Sub

    Private Function GetLastUpdatedFileInDirectory(ByVal directoryInfo As DirectoryInfo) As List(Of FileInfo)
        Dim files As FileInfo() = directoryInfo.GetFiles()
        Dim lastUpdatedFile As New List(Of FileInfo)()
        Dim lastUpdate As DateTime = DateTime.MinValue
        For Each file As FileInfo In files
            If file.LastWriteTime > lastUpdate Then
                lastUpdatedFile.Add(file)
                lastUpdate = file.LastAccessTime
            End If
        Next

        Return lastUpdatedFile

    End Function

    ' code for logout
    'Session.Abandon()
    'Dim ck As New HttpCookie("SAMPLE")
    '    ck.Expires = DateTime.Now.AddDays(-1)
    '    Response.Cookies.Add(ck)
    '    Response.Redirect("LoginDemo.aspx")

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Response.Redirect("LoginDemo.aspx")
    End Sub


   
End Class

