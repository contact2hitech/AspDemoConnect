
Partial Class wsddemo2018
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim objnam As New tybca2018.tybcadiv1
        GridView1.DataSource = objnam.searchdata(TextBox1.Text)
        ' error  aave err object ne
        'Err.Number



        'Err.Description
        'Err.Erl
        'Err.Source
        'Err.HelpFile
        'Err.HelpContext


        Dim i As Integer = 0
        For i = 1 To 9999
            On Error GoTo testlbl
            Err.Raise(i)
        Next
testlbl:
        Response.Write("ERROR NUMBER AND NAME : " & Err.Number & " DESC : " & Err.Description & "<br>")
        Err.Clear()
        Resume Next




        GridView1.DataBind()





    End Sub
End Class
