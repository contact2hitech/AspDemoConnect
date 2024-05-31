
Partial Class PracticalAss
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("user") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else
            Dim topi(10) As String
            topi(1) = "Online Banking"
            topi(2) = "Onine Ticket Booking"
            topi(3) = "Online Shopping"
            topi(4) = "Student Management System"
            topi(5) = "Matrimonial Service"
            'Label1.Text = "<h2><b>Topic Allocation :</b></h2> " & "<br>"
            Label1.Text = "<h2><b>ASP.NET Practical Assignment List for TYBCA Div I, III & IV (201819):</b></h2> " & "<br>"
            ' '' ''Dim i, j, s As Integer
            ' '' ''For j = 1 To 2
            ' '' ''    Label1.Text &= "DIV No: " & j & "<br>"
            ' '' ''    For i = 1 To 114
            ' '' ''        If j = 1 And i <= 57 Then
            ' '' ''            s = 51 + i + 1

            ' '' ''            Label1.Text &= "Roll no: " & i & " "
            ' '' ''            Label1.Text &= "TOPIC NO: " & (s Mod 5 + 1) & ": " & topi(s Mod 5 + 1) & "<br>"
            ' '' ''        ElseIf j = 2 And i <= 120 And i > 57 Then

            ' '' ''            s = 51 + i + 1
            ' '' ''            Label1.Text &= "DIV no : " & j & " "
            ' '' ''            Label1.Text &= " : Roll no : " & i & " "
            ' '' ''            Label1.Text &= " TOPIC NO : " & (s Mod 5 + 1) & ": " & topi(s Mod 5 + 1) & "<br>"
            ' '' ''        ElseIf j = 3 And i <= 180 And i > 120 Then

            ' '' ''        Else

            ' '' ''        End If
            ' '' ''    Next
            ' '' ''Next
            Label1.Text &= "<table border='4' width='100%'>"

            Label1.Text &= "<tr>"
            Label1.Text &= "<td  width='15%'>"


            Label1.Text &= "1. Registration Page "
            Label1.Text &= "With Validation" & "<br>"
            Label1.Text &= "2. Login Page having implementation of cookies , session, Profile and Parameters" & "<br>"
            Label1.Text &= "3. Registered Students Details Page" & "<br>"
            Label1.Text &= "4. Use of Datalist or Repeater for Catlog Listing Page with Adrotator Control" & "<br>"
            Label1.Text &= "5. Update Profile Page with Profile Picture Uploading facility" & "<br>"
            Label1.Text &= "6. Master Detail Concept Demo Page" & "<br>"
            Label1.Text &= "7. Web.Config Page" & "<br>"
            Label1.Text &= "8. Global.asax Page" & "<br>"
            Label1.Text &= "9. Webservice.asmx Page" & "<br>"
            Label1.Text &= "10. Money Transfer Demo Page" & "<br>"

            Label1.Text &= "</table>"
            'Label1.Text = "topic allcocated : " & "<br>"
            'Dim i, j, s As Integer
            'For i = 1 To 60
            '    j = 1
            '    s = i + 1
            '    Label1.Text &= "DIV no : " & j & " "
            '    Label1.Text &= " : Roll no : " & i & " "
            '    Label1.Text &= " TOPIC NO : " & (s Mod 10 + 1) & "<br>"

            'Next

            'Label1.Text = "topic allcocated : " & "<br>"
            'Dim i1, j1, s1 As Integer
            'For i1 = 61 To 130
            '    j1 = 2
            '    s1 = i1 + 1
            '    Label1.Text &= "DIV no : " & j1 & " "
            '    Label1.Text &= " : Roll no : " & i1 & " "
            '    Label1.Text &= " TOPIC NO : " & (s1 Mod 10 + 1) & "<br>"

            'Next
            ''        ElseIf j = 2 Then
            ''    s = i + 2
            ''    Label1.Text &= "DIV no : " & j & " "
            ''    Label1.Text &= " : Roll no : " & i & " "
            ''    Label1.Text &= " TOPIC NO : " & (s Mod 10 + 1) & "<br>"
            ''        ElseIf j = 3 Then
            ''    s = i + 3
            ''    Label1.Text &= "DIV no : " & j & " "
            ''    Label1.Text &= " : Roll no : " & i & " "
            ''    Label1.Text &= " TOPIC NO : " & (s Mod 10 + 1) & "<br>"
            ''        Else
            ''    s = i + 4
            ''    Label1.Text &= "DIV no : " & j & " "
            ''    Label1.Text &= " : Roll no : " & i & " "
            ''    Label1.Text &= " TOPIC NO : " & (s Mod 10 + 1) & "<br>"
            ''        End If
            ''Next
        End If
        
    End Sub
End Class
