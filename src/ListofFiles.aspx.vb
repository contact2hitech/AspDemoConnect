Imports System.IO
Partial Class ListofFiles
    Inherits System.Web.UI.Page
    Dim mycoll As New System.Collections.ArrayList
     
    Public Sub GetFilesFromDirectory(ByVal DirPath As String)
        Try
            Dim cou As Integer = 0
            Dim Dir As New DirectoryInfo(DirPath)
            Dim FileList As FileInfo() = Dir.GetFiles("*.aspx", SearchOption.TopDirectoryOnly)

            lblinfo.Text &= "<table border='4' width='100%'>"

            For Each FI As FileInfo In FileList
                '  lblme.Text = lblme.Text & FI.FullName & "<br/>"
                ' Response.Write("<a href = '" & FI.FullName & "'>" & "</a>")
                cou = cou + 1
                lblinfo.Text &= "<tr>"
                lblinfo.Text &= "<td align='center' width='15%'>"
                'this line
                lblinfo.Text &= " " & cou & ". "
                lblinfo.Text &= "</td>"
                lblinfo.Text &= "<td>"
                'this line
                lblinfo.Text &= ("           <a href=""" & FI.Name & """> " & FI.Name & "</a>") & "<br/>"
                lblinfo.Text &= "</td>"
                lblinfo.Text &= "</tr>"
                mycoll.Add("<a href=""" & FI.Name & """>" & FI.Name & "</a>")

            Next

            lblinfo.Text &= "</table>"

        Catch ex As Exception
            lblinfo.Text = ex.Message
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else

            ' lblToday.Text = DateTime.Now.ToString("MMMM dd, yyyy") & "."
            'Code for date difference
            Dim var As DateTime = DateTime.Now
            Dim var1 As DateTime = Session("Ltime")
            Dim tp As TimeSpan = var1.Subtract(var)
            Dim res As String

            If Math.Abs(tp.Hours) > 0 Then
                res = tp.Hours & " Hours " & Math.Abs(tp.Minutes) & " Minutes " & Math.Abs(tp.Seconds) & " Seconds"
                lblLogin.Text = "WELCOME {" & Session("User") & "} you are login since : " & res
            ElseIf Math.Abs(tp.Minutes) > 0 Then
                res = Math.Abs(tp.Minutes) & " Minutes " & Math.Abs(tp.Seconds) & " Seconds"
                lblLogin.Text = "WELCOME {" & Session("User") & "} you are login since : " & res
            ElseIf Math.Abs(tp.Seconds) > 0 Then
                res = Math.Abs(tp.Seconds) & " Seconds"
                lblLogin.Text = "WELCOME {" & Session("User") & "} you are login since : " & res
            End If
        End If
        If Not Page.IsPostBack Then
            'profile update code
            If Session("studid") <> 0 Then
                Dim path As String = Server.MapPath("~\")
                'lblpath.Text = " DEMO PATH BY HPP : " & path
                ' lblpath.Text = Server.MapPath("~\") & "<br/>" '& " HELLO DEAR " & Session("Uname") & " . your mobile no is " & Session("Umob") & " SESS ID IS: " & Session.SessionID
                'lblinfo.Text = "TOTAL FILES IN DIRECTORY " & "<br/>"
                GetFilesFromDirectory(path)
                'lblRandom.Text = "count is : " & mycoll.Count
                Dim intvalue As Integer = CInt(Int((mycoll.Count * Rnd()) + 1))
                lblRandom.Text = "<br> Count is : " & mycoll.Count & " Random no is " & intvalue & "  Random link is : " & mycoll(intvalue - 1).ToString
            Else
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Update Your RollNo on Update Page...!!!')</SCRIPT>")
            End If
        Else
        End If
    End Sub
   
End Class
