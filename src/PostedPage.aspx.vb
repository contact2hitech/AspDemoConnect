
Partial Class PostedPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim txttmp1 As New TextBox
        txttmp1 = CType(PreviousPage.FindControl("txtName"), TextBox)

        txtsample.Text = txttmp1.Text

    End Sub
End Class
