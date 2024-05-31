
Partial Class WizardDemo2017
    Inherits System.Web.UI.Page

    Protected Sub Wizard1_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick
        lblOut.Text = "YOUR DETAILS ARE: NAME IS = " _
           & " " & txtName.Text & " AND DIVISION IS : " & DropDownList2.SelectedItem.ToString

    End Sub

   
    Protected Sub Wizard2_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard2.FinishButtonClick
        Label2.Text = "hello   " & TextBox1.Text
    End Sub
End Class
