
Partial Class RuntimeMaster
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim para1 As String = "HELLO TO RUNTIME MASTER PAGE"
        Dim txta As New System.Web.UI.HtmlControls.HtmlTextArea
        txta.ID = "mytxtarea"
        txta.Value = para1
        Dim placeh As New PlaceHolder
        placeh.Controls.Add(txta)
        placeh.DataBind()
        'PlaceHolder1.Controls.Add(txta)
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Me.MasterPageFile = "Master2013.master"
    End Sub
End Class
