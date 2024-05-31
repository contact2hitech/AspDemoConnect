Imports System.IO
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Partial Class MainMaster1
    Inherits System.Web.UI.MasterPage
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        ' Dim config As Configuration = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~/")
        ' 'Get the required section of the web.config file by using configuration object.
        ' Dim pages As PagesSection = DirectCast(config.GetSection("system.web/pages"), PagesSection)
        ''Update the new values.
        ' pages.Theme = DropDownList1.SelectedItem.Text.ToString()
        ' 'save the changes by using Save() method of configuration object.
        ' If Not pages.SectionInformation.IsLocked Then
        '     config.Save()
        '     Response.Redirect("Default.aspx")
        ' Else
        '     Response.Write("<script>alert('Could not save configuration')</script>")
        ' End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            If Session("User") = "" Then
                linklogin.HRef = "LoginDemo.aspx"
                lbllinklogin.Text = "Login"
                linkregister.HRef = "RegistrationDemo.aspx"
            Else
                lbllinklogin.Text = "Logout"
                linklogin.HRef = "LoginDemo.aspx"
                lbllinkregister.Text = "Update Profile"
                linkregister.HRef = "UpdateProfile.aspx"
            End If

            Dim strpath As String = Server.MapPath(Request.Path)
            Dim strpath1 As String = strpath & ".vb"
            strpath = strpath '+ ".vb"
            If strpath.Contains("LoginDemo.aspx") Or strpath.Contains("Moderator") Or strpath.Contains("ListofFiles") Or strpath.Contains("ProfileDemo") Then

                ContentPlaceHolder3.Visible = False
                mydiv.Visible = False
                mydiv1.Visible = False
                ' myleftdiv.Visible = False
                myleftdivbottom.Visible = False
                'ltlcode.Text = ""
            Else
                Dim strcode As String = File.ReadAllText(strpath)
                ltlsource.Text = strcode
                Dim strcode1 As String = File.ReadAllText(strpath1)
                ltlcode.Text = strcode1
            End If

        End If

    End Sub

    ' code for logout
    'Session.Abandon()
    'Dim ck As New HttpCookie("SAMPLE")
    '    ck.Expires = DateTime.Now.AddDays(-1)
    '    Response.Cookies.Add(ck)
    '    Response.Redirect("LoginDemo.aspx")

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Response.Redirect("LoginDemo.aspx")
    End Sub
End Class

