
Partial Class second
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("Name") = Nothing Then
            Response.Write("PLEASE ENTER YOUR NAME  " & "<a href=""DemoQuery.aspx"">Click here to go back </a>" & "<br/>")
        Else
            Dim str As String
            Dim bol As Boolean
            Dim age As String
            str = Request.QueryString("Name")
            Dim strimgname As String = Profile.STUDENT_DETAILS.simage
            bol = Request.QueryString("Gen")
            Image1.ImageUrl = "~/profilephotos/" & strimgname
            'If bol = True Then
            '    Image1.ImageUrl = "~/profilephotos/" & strimgname
            'Else
            '    Image1.ImageUrl = "~/profilephotos/" & strimgname

            'End If

            Label1.Text = "WELCOME " & str & " to my SITE. Enjoy Surfing: you are of  Age years " & Request.QueryString("Age")

        End If
        
       
    End Sub
End Class
