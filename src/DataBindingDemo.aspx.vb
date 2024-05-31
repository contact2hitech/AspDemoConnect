
Partial Class DataBindingDemo
    Inherits System.Web.UI.Page
    Public tydiv3 As String
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Write(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(1).ToString)
        tydiv3 = TextBox1.Text & " SAMPLE TEXT"
        Me.DataBind()
    End Sub
    Public Function myownfunction() As String
        Dim str As String
        str = TextBox1.Text
        Return str
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim myarl As New ArrayList
        Dim mysrl As New SortedList

        mysrl.Add("1", "ABC")
        mysrl.Add("22", "DEF")
        mysrl.Add("88", "GHI")
        mysrl.Add("11", "JKL")
        ListBox1.DataSource = mysrl.Values
        Me.DataBind()
    End Sub
End Class
