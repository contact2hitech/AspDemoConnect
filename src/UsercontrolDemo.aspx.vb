Imports ASP.webusercontrol_ascx
Imports ASP.wuctest_ascx

Partial Class UsercontrolDemo
    Inherits System.Web.UI.Page
    Dim ctl As ASP.webusercontrol_ascx
    Dim ct2 As ASP.wuctest_ascx

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ctl = CType(LoadControl("~/WebUserControl.ascx"), ASP.webusercontrol_ascx)

        ct2 = CType(LoadControl("~/WUCtest.ascx"), ASP.wuctest_ascx)
        PlaceHolder2.Controls.Add(ct2)
    End Sub

    Protected Sub btnLoadControl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLoadControl.Click
        Dim img1 As New Image
        img1.ImageUrl = "~/image/005.jpg"
        img1.ID = "img1"
        img1.AlternateText = "SAMPLE IMAGE"
        Dim btn As New Button
        btn.ID = "mybtn"
        btn.Text = "RUN TIME BUTTON"
        PlaceHolder1.Controls.Add(ctl)
        PlaceHolder1.Controls.Add(btn)
        PlaceHolder1.Controls.Add(img1)


    End Sub
End Class
