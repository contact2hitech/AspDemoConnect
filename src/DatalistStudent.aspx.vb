
Partial Class DatalistStudent
    Inherits System.Web.UI.Page

    
    Protected Sub mydatalist_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles mydatalist.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or _
        e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim emailidlabel As Label = CType(e.Item.FindControl("emailidLabel"), Label)
            Dim mobilelabel As Label = CType(e.Item.FindControl("mobileLabel"), Label)

            'call web service
            'convert this data
            'add it in to datalist
            Dim myser As New OTPDemo1.Service
            emailidlabel.Text = myser.maskEmail(emailidlabel.Text)
            mobilelabel.Text = myser.maskEmail(mobilelabel.Text)

        End If
    End Sub

    
    Protected Sub myrepaetor_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles myrepaetor.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim emailidlabel As Label = CType(e.Item.FindControl("Label4"), Label)
            Dim mobilelabel As Label = CType(e.Item.FindControl("Label6"), Label)

            'call web service
            'convert this data
            'add it in to datalist
            Dim myser As New OTPDemo1.Service
            emailidlabel.Text = myser.maskEmail(emailidlabel.Text)
            mobilelabel.Text = myser.maskEmail(mobilelabel.Text)
        End If
    End Sub
End Class
