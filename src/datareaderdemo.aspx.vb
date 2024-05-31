
Partial Class datareaderdemo
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim cn As New SqlConnection("Data Source=X73\SQLEXPRESS;Initial Catalog=Demos;Integrated Security=True")
        Dim str As String = "select student_id, name from reg_details where name like '" & TextBox1.Text & "%';"
        Dim cmd As New SqlCommand(str, cn)
        Dim dr As SqlDataReader
        If cn.State = ConnectionState.Open Then
            cn.Close()
        End If
        cn.Open()
        dr = cmd.ExecuteReader
        While dr.Read()
            Label2.Text &= "<br>Student ID: -------- STUDENT NAME: <br>"
            Label2.Text &= " " & dr.Item(0) & "---------" & dr.Item(1) & "<br>"
        End While
        dr.Close()
        cn.Close()


    End Sub
End Class
