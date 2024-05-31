
Partial Class ListControlDemo
    Inherits System.Web.UI.Page

    
    Protected Sub btnCheck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheck.Click
        'lblListbox.Text = "YOUR SELECTED INDEX IS :"
        'lblListbox.Text &= ListBox1.SelectedIndex.ToString & " SELECTED VALUE "
        'lblListbox.Text &= ListBox1.SelectedValue.ToString & " SELECTED ITEM  "
        'lblListbox.Text &= ListBox1.SelectedItem.ToString & " SELECTION MODE CHANGES TO "
        'If ListBox1.SelectionMode = ListSelectionMode.Single Then
        '    ListBox1.SelectionMode = ListSelectionMode.Multiple
        '    lblListbox.Text &= " MULTIPLE"
        'Else
        '    ListBox1.SelectionMode = ListSelectionMode.Single
        '    lblListbox.Text &= " SINGLE"
        'End If
        ''  lblListbox.Text &= "LST 2 SELECTED ITEM (DATATEXTFIELD) =  " & ListBox2.SelectedItem.Text.ToString


    End Sub

   
    Protected Sub ListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Response.Write("YOU SELECTED :  " & ListBox1.SelectedItem.ToString & " your ROLL NO IS :  " & ListBox1.SelectedValue.ToString)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  ListBox1.DataTextField = "uname"
        ' ListBox1.DataValueField = "uname"
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Response.Write("YOU SELECTED " & DropDownList1.SelectedValue)
    End Sub

   
End Class
