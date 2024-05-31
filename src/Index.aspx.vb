Imports System.IO
Partial Class Index
    Inherits System.Web.UI.Page

    '  Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
    '   Server.Transfer("E:\HPP Personal\Dropbox\Study Material\ASP.NET\First2012\Default4.aspx")
    ' End Sub
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Write("CONNECTION STRING IS:::::  ")
        Response.Write(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(0).ToString)
        Response.Write("CONNECTION STRING IS:::::  ")
        Response.Write(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(2).ToString)
        If Not Request.Cookies("mycookie") Is Nothing Then
            Dim newreadcook As HttpCookie = Request.Cookies("mycookie")
            lblinfo.Text = "WELCOME " & vbNewLine & newreadcook.Values("Uname").ToString
            'Label1.Text = "WELCOME " & vbNewLine & newreadcook.Values("Uname").ToString & vbNewLine & newreadcook.Values("Mob").ToString & vbNewLine & newreadcook.Values("LastV").ToString & vbNewLine & newreadcook.Expires.ToString
        Else
            lblinfo.Text = "Please Wait ......"
            Dim strurl As String = "ListofFiles.aspx"
            Response.AppendHeader("REFRESH", "10;URL=" + strurl)
        End If
        
    End Sub
End Class
