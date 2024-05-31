
Partial Class ContainerControlDemo2017
    Inherits System.Web.UI.Page
    Dim flag As Boolean = True
    Dim arstr As Array
    Dim cou As Integer = 1
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim i As Integer = 0
        For i = 0 To cou - 1
            Dim mycal As New Button
            mycal.Text = "mybutton" & cou.ToString
            PlaceHolder1.Controls.Add(mycal)
            PlaceHolder1.Controls.Add(mycal)
            PlaceHolder1.Controls.Add(mycal)
            PlaceHolder1.Controls.Add(mycal)

            cou = cou + 1
        Next
        





    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write(System.Environment.Version.ToString())
    End Sub
End Class
