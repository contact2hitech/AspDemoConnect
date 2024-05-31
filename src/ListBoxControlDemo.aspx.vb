Imports System.Data
Partial Class ListBoxControlDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim query As String
            'query = "Select upassword from user_info where uname='" & txtUname.Text & "'"
            query = "Select [student_id],[name] from reg_details"
            Dim myobj As New myconnection
            Dim dt As New DataTable
            dt = myobj.getdata(query)
            ListBox1.DataSource = dt
            ListBox1.DataTextField = "name"
            ListBox1.DataValueField = "student_id"
            ListBox1.DataBind()
            ListBox1.Rows = 20
            ListBox1.SelectedIndex = -1
            ListBox2.Items.Add("No item")
            ListBox2.SelectedIndex = -1
        End If


    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
      
        ListBox2.Items.Add(ListBox1.SelectedItem)

    End Sub

    
End Class
