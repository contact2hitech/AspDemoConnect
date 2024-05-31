
Partial Class ContainerControls
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cal As New Calendar
        cal.ID = "runtimecal"
        Dim cal1 As New Calendar
        Dim cal2 As New Calendar
        cal1.ID = "runtimecal1"
        cal2.ID = "runtimecal12"
        testplace.Controls.Add(cal)
        testplace.Controls.Add(cal1)
        mypanel.Controls.Add(cal2)
        mypanel.DataBind()
        testplace.DataBind()
        Response.Write("BUTTON 1 PRESSED")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Write("BUTTON 2 PRESSED")
    End Sub
End Class
