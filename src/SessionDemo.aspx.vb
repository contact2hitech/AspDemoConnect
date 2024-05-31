
Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub btnOk_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnOk.Click
        Session("TestUname") = txtName.Text
        Session("TestUmob") = txtMob.Text
        Session("TestLtime") = System.DateTime.Now.ToString
        'Session("phpusername") = txtName.Text
        'Profile.fname = txtName.Text
        'Profile.lname = txtMob.Text
        'Response.Redirect("DemoQueryString.aspx")
        'Response.Redirect("ShowSessionData.aspx")
        'Response.Redirect("Default3.aspx")
    End Sub
End Class
