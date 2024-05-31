Imports ASP.myfooter_ascx
Partial Class RuntimeTYBCA2017
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim myobjwuc As New ASP.myfooter_ascx
        myobjwuc = CType(LoadControl("~/myfooter.ascx"), ASP.myfooter_ascx)
        PlaceHolder1.Controls.Add(myobjwuc)


    End Sub
End Class
