
Partial Class Datalist2015
    Inherits System.Web.UI.Page

    Protected Sub DataList1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList1.ItemDataBound
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

    Protected Sub Repeater1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles Repeater1.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim emailidlabel As Label = CType(e.Item.FindControl("Label5"), Label)
            Dim mobilelabel As Label = CType(e.Item.FindControl("Label4"), Label)

            'call web service
            'convert this data
            'add it in to datalist
            Dim myser As New OTPDemo1.Service
            emailidlabel.Text = myser.maskEmail(emailidlabel.Text)
            mobilelabel.Text = myser.maskEmail(mobilelabel.Text)
        End If

    End Sub

    Protected Sub FormView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.DataBound
        'If FormView1.DataItem <> Nothing Then
        '    Dim emailidlabel As Label = CType(FormView1.FindControl("emailidLabel"), Label)
        '    Dim mobilelabel As Label = CType(FormView1.FindControl("mobileLabel"), Label)

        '    'call web service
        '    'convert this data
        '    'add it in to datalist
        '    Dim myser As New OTPDemo1.Service
        '    emailidlabel.Text = myser.maskEmail(emailidlabel.Text)
        '    mobilelabel.Text = myser.maskEmail(mobilelabel.Text)
        'End If
        
    End Sub
End Class
