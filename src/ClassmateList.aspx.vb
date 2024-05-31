
Partial Class ClassmateList
    Inherits System.Web.UI.Page

    Protected Sub DataList1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList1.ItemDataBound

        If e.Item.ItemType = ListItemType.Item Or _
            e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim emailidlabel As Label = CType(e.Item.FindControl("emailidLabel"), Label)
            Dim mobilelabel As Label = CType(e.Item.FindControl("mobileLabel"), Label)

            'call web service
            'convert this data
            'add it in to datalist
            Dim myser As New OTPDemo.Service
            emailidlabel.Text = myser.maskEmail(emailidlabel.Text)
            mobilelabel.Text = myser.maskEmail(mobilelabel.Text)

        End If

    End Sub

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub
End Class
