
Partial Class MaterDetailDemowithQueryString
    Inherits System.Web.UI.Page

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Response.Redirect("MaterDetailDemowithQueryString.aspx?courseid=" & DropDownList2.SelectedValue)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

        End If
    End Sub
End Class
