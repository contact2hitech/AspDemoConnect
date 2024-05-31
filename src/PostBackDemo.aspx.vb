
Partial Class PostBackDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        '        If Not Page.IsPostBack Then

        'HELLO THIS IS SAMPLE COMMENT

        With DropDownList2.Items
            .Add("A")
            .Add("B")
            .Add("C")
            .Add("D")
        End With

        'Else
        Response.Write("TEST SUCCESS")
        ' End If

    End Sub

    
    Protected Sub btnCheck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheck.Click

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub
End Class
