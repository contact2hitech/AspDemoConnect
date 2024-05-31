Imports System.IO
Imports System.Collections.Generic
Imports System.Web.Configuration
Partial Class Default5
    Inherits System.Web.UI.Page
    Public Sub GetFilesFromDirectory(ByVal DirPath As String)
        Try
            Dim cou As Integer
            cou = 0
            Dim Dir As New DirectoryInfo(DirPath)
            'Dim FileList As FileInfo() = Dir.GetFiles()
            Dim FileList As FileInfo() = Dir.GetFiles("*.*", SearchOption.TopDirectoryOnly)
            'Dim FileList As FileInfo() = Dir.GetFiles.Where(Function(fi) fi.Extension = ".avi" OrElse fi.Extension = ".mpg" OrElse fi.Extension = ".mkv" OrElse fi.Extension = ".mp4").ToArray()
            For Each FI As FileInfo In FileList
                '  lblme.Text = lblme.Text & FI.FullName & "<br/>"
                cou = cou + 1
                lbl1.Text &= " " & cou & ". "
                lbl1.Text &= ("<a href=" & FI.Directory.Name & "/" & FI.Name & ">" & FI.Name & "</a>") & "<br/>"
                'lbl1.Text &= FI.Directory.Name & "/" & FI.Name
            Next
            ' SHOWING PATH
            '  lbl1.Text &= "YOUR FILES ARE LOCATED @ <br/>" & DirPath
        Catch ex As Exception
            lbl1.Text = ex.Message
        End Try
    End Sub
    Public Sub GetAllFilesFromDirectory(ByVal DirPath As String, ByVal filetype As String)
        Try
            Dim cou As Integer
            cou = 0
            Dim Dir As New DirectoryInfo(Server.MapPath("~\"))
            'lblother.Text &= Server.MapPath("~\")
            'lblother.Text &= srtr
            Dim FileList As FileInfo() = Dir.GetFiles(filetype, SearchOption.AllDirectories)
            For Each FI As FileInfo In FileList
                '  lblme.Text = lblme.Text & FI.FullName & "<br/>"
                ' Response.Write("<a href = '" & FI.FullName & "'>" & "</a>")
                ' lblother.Text &= "YOUR FILES ARE LOCATED @ <br/>" & DirPath
                cou = cou + 1
                'lblother.Text &= " " & cou & ". "
                'lblother.Text &= ("<a href=""" & FI.Directory.Name & "\" & FI.Name & """>" & FI.Directory.Name & "\" & FI.Name & "</a>") & "<br/>"
            Next

            ' SHOWING PATH
            'lblother.Text &= "YOUR FILES ARE LOCATED @ <br/>" & DirPath
        Catch ex As Exception
            lblother.Text = ex.Message
        End Try

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "" Then
            'Response.Redirect("LoginDemo.aspx")
            Label1.Text = "WELCOME " & Profile.UserName & " u are login since : " & Session("Ltime")
        Else

            Label1.Text = "WELCOME " & Session("User") & " u are login since : " & Session("Ltime")
            Response.Write(System.Web.Configuration.WebConfigurationManager.AppSettings("ClassName").ToString)
        End If
        If Not Page.IsPostBack Then
            'Dim strdemo As String = System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("TEST123").ConnectionString
            'Response.Write(strdemo)
            'code for images in directory
            Dim filePaths1 As String() = Directory.GetFiles(Server.MapPath("~/Downloads"), "*.jpg")
            Dim filePaths2 As String() = Directory.GetFiles(Server.MapPath("~/Downloads"), "*.png")
            Dim filePaths3 As String() = Directory.GetFiles(Server.MapPath("~/Downloads"), "*.txt")

            Dim files1 As New List(Of ListItem)()
            For Each filePath1 As String In filePaths1
                Dim fileName1 As String = Path.GetFileName(filePath1)
                files1.Add(New ListItem(fileName1, "~/Downloads/" + fileName1))


            Next
            'for png images
            For Each filePath1 As String In filePaths2
                Dim fileName1 As String = Path.GetFileName(filePath1)
                files1.Add(New ListItem(fileName1, "~/Downloads/" + fileName1))
            Next
            ' GridView1.DataSource = files1
            'GridView1.DataBind()

            ' DataList1.DataSource = files1
            ' DataList1.DataBind()
            Dim path1 As String = Server.MapPath("~\Downloads")
            ' Response.Write(Server.MapPath("~\") & "<br/>")
            'lblinfo.Text = "TOTAL FILES IN DIRECTORY " & "<br/>"
            GetFilesFromDirectory(path1)
            GetAllFilesFromDirectory(path1, "*.jpg")

            lbl2.Text = "Hello welcome to : " & Application("name")
            lbl2.Text &= "<br> Our COUNTER IS : " & Application("visitorno")
        End If
        'Dim str As String = System.Web.Hosting.HostingEnvironment.ApplicationHost.GetSiteName()
        'Dim str2 As String = HttpContext.Current.Request.Url.Host
        'Application("name") = "NAME 1 : " & str & " NAME 2 : " & str2

        lbl2.Text = "Hello welcome to : " & Application("name")
        lbl2.Text &= "<br> Our Counter is : " & Application("visitorno")


        'Code for Reading Web.config File Data
        'Dim i As Integer = 0
        'For i = 0 To WebConfigurationManager.ConnectionStrings.Count - 1
        '    lbl2.Text &= "<br><h2> " & i + 1 & " Con Str Name: " & WebConfigurationManager.ConnectionStrings(i).Name & ": Value : " & WebConfigurationManager.ConnectionStrings(i).ConnectionString & "</h2>"
        'Next

        'Dim i As Integer = 0
        'For i = 0 To WebConfigurationManager.AppSettings.Count - 1
        '    lbl2.Text &= "<br>" & i + 1 & " Key: " & WebConfigurationManager.AppSettings.Keys(i).ToString & " Value: " & WebConfigurationManager.AppSettings.Item(i).ToString
        'Next
        'lbl2.Text &= "<br><h2>THIS IS CONNECTION STRINGS</h2><br>"
        'Dim j As Integer = 0
        'For j = 0 To WebConfigurationManager.ConnectionStrings.Count - 1
        '    lbl2.Text &= "<br>" & j & " Key: " & WebConfigurationManager.ConnectionStrings(j).Name & " Value: " & WebConfigurationManager.ConnectionStrings(j).ConnectionString
        'Next






    End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    Dim a, b As Integer
    '    a = b / 0
    '    Response.Write(a)
    'End Sub

   

   
End Class
