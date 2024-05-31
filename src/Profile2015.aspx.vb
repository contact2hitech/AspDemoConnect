
Partial Class Profile2015
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Profile.PersonalInfo.Studentname = TextBox1.Text
        Profile.generalinfo.City = DropDownList1.SelectedItem.Text
        'ConfigurationManager.AppSettings("Studentname") = TextBox1.Text
        'ConfigurationManager.AppSettings("City") = TextBox1.Text
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Label2.Text = "YOUR NAME IS : " & ConfigurationManager.AppSettings("Studentname") & "<br>"
        'Label2.Text &= "<br> YOUR CITY IS : " & ConfigurationManager.AppSettings("City")

        Label2.Text = "YOUR NAME IS : " & Profile.PersonalInfo.Studentname & "<br>"
        Label2.Text &= "<br> YOUR CITY IS : " & Profile.generalinfo.City
        

    End Sub
End Class
