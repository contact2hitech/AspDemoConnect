Imports System.Xml
Imports System.Data

Partial Class offlineExamples
    Inherits System.Web.UI.Page
    Public Sub GetFilesFromDirectory(ByVal DirPath As String)
        Try
            Dim cou As Integer = 0
            Dim Dir As New DirectoryInfo(DirPath)
            Dim FileList As FileInfo() = Dir.GetFiles("*.aspx", SearchOption.TopDirectoryOnly)

            ' lblinfo.Text &= "<table border='4' width='100%'>"

            For Each FI As FileInfo In FileList
                '  lblme.Text = lblme.Text & FI.FullName & "<br/>"
                ' Response.Write("<a href = '" & FI.FullName & "'>" & "</a>")
                'cou = cou + 1
                'lblinfo.Text &= "<tr>"
                'lblinfo.Text &= "<td align='center' width='15%'>"
                'this(line)
                'lblinfo.Text &= " " & cou & ". "
                'lblinfo.Text &= "</td>"
                'lblinfo.Text &= "<td>"
                'this(line)
                'lblinfo.Text &= ("           <a href=""" & FI.Name & """> " & FI.Name & "</a>") & "<br/>"
                'lblinfo.Text &= "</td>"
                'lblinfo.Text &= "</tr>"
                'mycoll.Add("<a href=""" & FI.Name & """>" & FI.Name & "</a>")

                'code to save list in xml
                cou = cou + 1
                'code required previously 
                Dim xmldoc As XmlDocument = New XmlDocument()
                xmldoc.Load(Server.MapPath("XMLlistoffiles.xml"))
                Dim parentelement As XmlElement = xmldoc.CreateElement("AllExamples")
                Dim name As XmlElement = xmldoc.CreateElement("srno")
                name.InnerText = cou
                Dim Emp_id As XmlElement = xmldoc.CreateElement("ExampleFile")
                Emp_id.InnerText = FI.Name
                Dim Qualification As XmlElement = xmldoc.CreateElement("IsActive")
                Qualification.InnerText = "False"

                parentelement.AppendChild(name)
                parentelement.AppendChild(Emp_id)
                parentelement.AppendChild(Qualification)
                xmldoc.DocumentElement.AppendChild(parentelement)
                xmldoc.Save(Server.MapPath("XMLlistoffiles.xml"))
                ' BindDatalist()

            Next

            '  lblinfo.Text &= "</table>"

        Catch ex As Exception
            ' lblinfo.Text = ex.Message
        End Try

    End Sub
    Public Sub BindDatalist()
        Dim xmlreader As XmlTextReader = New XmlTextReader(Server.MapPath("XMLListoffiles.xml"))
        Dim ds As New DataSet
        ds.ReadXml(xmlreader)
        xmlreader.Close()
        If ds.Tables.Count <> 0 Then
            DataList1.DataSource = ds
            DataList1.DataBind()
        Else
            DataList1.DataSource = Nothing
            DataList1.DataBind()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "abc@abc.com" Then
        Else
            Response.Redirect("LoginDemo.aspx")
        End If
        If Not Page.IsPostBack Then
            Dim path As String = Server.MapPath("~\")
            If FileIO.FileSystem.FileExists(path & "XMLListoffiles.xml") Then
                BindDatalist()
            Else
                GetFilesFromDirectory(path)
                BindDatalist()
            End If
        End If
        'code for checking list of pending examples
        Dim xmlreader1 As XmlTextReader = New XmlTextReader(Server.MapPath("XMLListoffiles.xml"))
        Dim ds As New DataSet
        ds.ReadXml(xmlreader1)
        xmlreader1.Close()
        If ds.Tables.Count <> 0 Then

            Dim i As Integer = 0
            lblout.Text = "Pending EXAMPLES ARE <br>"
            For i = 0 To ds.Tables(0).Rows.Count - 1
                If ds.Tables(0).Rows(i).Item(2).ToString = "True" Then
                    lblout.Text &= i + 1 & ". Example Name : <a href=" & ds.Tables(0).Rows(i).Item(1).ToString & ">" & ds.Tables(0).Rows(i).Item(1).ToString & "</a><br>"
                    'lblout.Text &= i + 1 & ". Example Name : " & ds.Tables(0).Rows(i).Item(1).ToString & "<br>"
                End If
            Next
        Else
            'DataList1.DataSource = Nothing
            'DataList1.DataBind()
        End If



    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('FILE WILL BE UPDATED !!!')</SCRIPT>")
        Dim path As String = Server.MapPath("~\")
        '  If FileIO.FileSystem.FileExists(path & "XMLListoffiles.xml") Then
        'FileIO.FileSystem.CopyFile(path & "XMLListoffiles.xml", path & "XMLListoffiles1.xml")

        'Else


        'GetFilesFromDirectory(path)
        'logic for storing data on xml with selected pending example in the checkbox
        Dim maxcou As Integer = DataList1.Items.Count
        Dim cou As Integer = 1
        
        Dim xmldoc As XmlDocument = New XmlDocument()
        xmldoc.Load(Server.MapPath("XMLlistoffiles.xml"))
        xmldoc.DocumentElement.RemoveAll()
        'test this code before and then implement
        For Each item As DataListItem In DataList1.Items
            'Dim myTempLabel As Label = CType(item.FindControl("Label6"), Label)
            'myTempLabel.Visible = True
            Dim parentelement As XmlElement = xmldoc.CreateElement("AllExamples")
            Dim name As XmlElement = xmldoc.CreateElement("srno")
            Dim lblsr As Label = CType(item.FindControl("lblsrno"), Label)
            name.InnerText = lblsr.Text

            Dim Emp_id As XmlElement = xmldoc.CreateElement("ExampleFile")
            Dim lblpg As Label = CType(item.FindControl("lblpage"), Label)
            Emp_id.InnerText = lblpg.Text
            Dim Qualification As XmlElement = xmldoc.CreateElement("IsActive")
            Dim mychk As CheckBox = CType(item.FindControl("CheckBox1"), CheckBox)
            If mychk.Checked = True Then
                Qualification.InnerText = "True"
            Else
                Qualification.InnerText = "False"
            End If
            parentelement.AppendChild(name)
            parentelement.AppendChild(Emp_id)
            parentelement.AppendChild(Qualification)
            xmldoc.DocumentElement.AppendChild(parentelement)
        Next
        xmldoc.Save(Server.MapPath("XMLlistoffiles.xml"))
        'End If
    End Sub
End Class



