Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO
Partial Class ThemeRuntime
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("TOTAL VISTOR : " & Application("visitorno"))
    End Sub
    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Dim thm As String
        thm = Session("themeselected")
        If thm IsNot Nothing Then
            Page.Theme = thm
            ddlTheme.Text = thm
        Else
            Session("themeselected") = ddlTheme.Text
            Page.Theme = "Jan"
        End If
    End Sub

    Protected Sub ddlTheme_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlTheme.SelectedIndexChanged
        Session("themeselected") = ddlTheme.Text
        Server.Transfer(Request.FilePath)
    End Sub
End Class
