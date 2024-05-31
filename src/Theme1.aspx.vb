Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Partial Class Theme1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session("themeselected") = ddlTheme.Text
        Else
            Session("themeselected") = ddlTheme.Text
        End If
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Dim thm As String = ""
        thm = Session("themeselected")
        If thm IsNot Nothing Then
            Page.Theme = thm
        Else
            Page.Theme = "Dec"

        End If
    End Sub

   
    Protected Sub ddlTheme_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlTheme.SelectedIndexChanged
        Session("themeselected") = ddlTheme.Text
        Server.Transfer(Request.FilePath)
    End Sub
End Class
