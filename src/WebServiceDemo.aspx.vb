
Partial Class WebServiceDemo
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click

        'Dim mywebobj As New WebServiceDemo2014.Service
        Dim mywebobj As New wsdtybca.tybcadiv1
        lblAns.Text = mywebobj.SimpleInterest(TextBox1.Text, TextBox2.Text, TextBox3.Text)
        testlbl.Text = " YOUR NAME : " & mywebobj.HelloWorld
    End Sub
End Class
