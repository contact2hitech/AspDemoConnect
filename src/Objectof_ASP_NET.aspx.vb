
Partial Class Objectof_ASP_NET
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click

        ' Server.Transfer("ErrorHandlingDemo.aspx")



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        Label1.Text = TextBox1.Text
    End Sub
End Class
