
Partial Class NavigationDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim i As Integer
        For i = 0 To System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Count - 1
            Dim str As String = System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(i).ConnectionString
            Response.Write("Connection string :" & i & " is : " & str & "<br>")
        Next

        Dim str1 As String = System.Web.Configuration.WebConfigurationManager.AppSettings("ClassName").ToString
        Dim str2 As String = System.Web.Configuration.WebConfigurationManager.AppSettings("StudentName").ToString
        Response.Write("MY CALSS NAME IS " & str1 & " MY NAME IS " & str2)
        '''''Dim str1 As String = System.Web.Configuration.WebConfigurationManager.AppSettings.Keys.Item.
        ''''Response.Write("MY APP SETTINGS NAME IS :" & str1)
    End Sub
End Class
