
Partial Class postedpagesimple
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim txt1 As New TextBox
        txt1 = CType(PreviousPage.FindControl("txtFirst"), TextBox)
        TextBox1.Text = txt1.Text

        Dim grd As New GridView
        grd = CType(PreviousPage.FindControl("GridView1"), GridView)

        GridView1.DataSource = grd.DataSource
        GridView1.DataBind()


    End Sub
End Class
