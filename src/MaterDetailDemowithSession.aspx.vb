
Partial Class MaterDetailDemowithSession
    Inherits System.Web.UI.Page

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        Session("c2019") = DropDownList2.SelectedValue
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("YOUR SELKETD COURSE ID IS" & Session("c2019"))
    End Sub
End Class
