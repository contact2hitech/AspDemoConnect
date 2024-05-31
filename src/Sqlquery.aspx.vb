
Partial Class Sqlquery
    Inherits System.Web.UI.Page
    Dim myobj As New myconnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim dt As New Data.DataTable
            dt = myobj.getdata("select uid,emailid from reg_details")
            drplstuid.DataSource = dt
            drplstuid.DataTextField = "uid"
            drplstuid.DataValueField = "uid"
            drplstuid.DataBind()
        Else

        End If
        
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click

        Dim cou As Integer
        Dim str As String = "DELETE FROM reg_details WHERE uid = " & drplstuid.SelectedValue.ToString & ""
        'Response.Write(str)
        cou = myobj.executedata(str)
        If cou > 0 Then
            Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Success !!!')</SCRIPT>")
        Else
            Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Failed !!!')</SCRIPT>")
        End If
    End Sub
End Class
