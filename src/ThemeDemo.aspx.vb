Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Partial Class ThemeDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

        Dim thm As String
        thm = Session("themeselected")
        If thm IsNot Nothing Then
            Page.Theme = thm
            DropDownList1.Text = thm
        Else
            Session("themeselected") = DropDownList1.Text
            Page.Theme = "Summer"
        End If


    End Sub

    
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Session("themeselected") = DropDownList1.Text
        Server.Transfer(Request.FilePath)
    End Sub
End Class
