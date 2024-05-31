Imports ASP.ucinformationdemo_ascx
Partial Class RuntimeUserControlDemo
    Inherits System.Web.UI.Page
    Dim mycontrolobject As ASP.ucinformationdemo_ascx

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        mycontrolobject = CType(LoadControl("~/ucinformationdemo.ascx"), ASP.ucinformationdemo_ascx)

        PlaceHolder1.Controls.Add(mycontrolobject)

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
        Else

        End If
    End Sub
End Class
