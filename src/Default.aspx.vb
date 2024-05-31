
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else
            If Not Page.IsPostBack Then
                With DropDownList1.Items
                    .Add("one")
                    .Add("two")
                    .Add("three")
                    .Add("Four")
                    .Add("Five")
                End With
                ' MsgBox("Welcome to my site")
                'End If
                'DropDownList2.Items.Clear()
                With DropDownList2.Items
                    .Add("1")
                    .Add("2")
                    .Add("3")
                End With
            End If
            'MsgBox("HELLO EVERY TIME")
            Dim strurl As String = "Welcome.aspx"
            Response.AppendHeader("REFRESH", "5;URL=" + strurl)
            'Response.Redirect("ListofFiles.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        HiddenField1.Value = DropDownList1.SelectedItem.ToString & " means in digits " & DropDownList2.SelectedItem.ToString
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'MsgBox(HiddenField1.Value)
        Response.Write(HiddenField1.Value)
    End Sub
End Class
