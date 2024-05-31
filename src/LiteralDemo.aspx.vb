
Partial Class LiteralDemo
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Page.IsPostBack Then
        '    Response.Write("HELLO")

        '    Dim str As String = ""
        '    str += "SELECTED INDEX " & CheckBoxList1.SelectedIndex.ToString & vbNewLine
        '    str += "SELECTED ITEM " & CheckBoxList1.SelectedItem.ToString & vbNewLine
        '    str += "SELECTED VALUE " & CheckBoxList1.SelectedValue.ToString & vbNewLine
        '    Label1.Text += str
        'Else
        '    CheckBoxList1.SelectedIndex = 0
        'End If

    End Sub
    Protected Sub btnLiteral_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLiteral.Click
        Literal2.Text = TextBox1.Text & "'s Page"
        'Literal2.Text = "TODAY IS  " & Date.Today
        'myliteralTYBCA.Text = "HELLO"
    End Sub
End Class

