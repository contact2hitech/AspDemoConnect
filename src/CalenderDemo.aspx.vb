
Partial Class CalenderDemo
    Inherits System.Web.UI.Page

    Protected Sub btnCheck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCheck.Click
        'lblStatus.Text = Calendar1.SelectedDates.Count.ToString
        'lblStatus.Text = Calendar1.SelectedDate.ToLongDateString
        ListBox1.Items.Clear()
        Dim i As Integer
        For i = 0 To Calendar3.SelectedDates.Count - 1
            'lblStatus.Text += "<br>"
            'lblStatus.Text += Calendar3.SelectedDates.Item(i).Date.ToString("dd MMM yyyy")
            'lblStatus.Text += "<br>"
            ListBox1.Items.Add(Calendar3.SelectedDates.Item(i).Date.ToString("dd MMM yyyy"))
        Next



    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Calendar1.SelectedDate = Today
        Calendar3.SelectionMode = CalendarSelectionMode.Day
    End Sub

    Protected Sub Calendar3_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar3.SelectionChanged

        Calendar3.SelectedDates.Add(Calendar3.SelectedDate)
    End Sub
End Class
