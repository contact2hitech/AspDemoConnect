
Partial Class PostedPage2014
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim txt As New TextBox
        txt = PreviousPage.FindControl("txtName")
        lblMessage.Text = txt.Text
    End Sub
End Class
