Imports System.Data.SqlClient
Partial Class Repeater
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("constrsql").ConnectionString.ToString)
        Dim cmd As New SqlCommand("select  student_id , name, emailid, simage from reg_details", cn)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New Data.DataSet
        da.Fill(ds)
        Repeater1.DataSource = ds.Tables(0)
        Repeater1.DataBind()
        DataList1.DataSource = ds.Tables(0)
        DataList1.DataBind()

    End Sub

    Protected Sub DataList1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList1.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim emailidLabel As Label = CType(e.Item.FindControl("emailidLabel"), Label)
            'Dim mobilelabel As Label = CType(e.Item.FindControl("Label4"), Label)

            'call web service
            'convert this data
            'add it in to datalist
            Dim myser As New OTPDemo1.Service
            emailidlabel.Text = myser.maskEmail(emailidlabel.Text)
            'mobilelabel.Text = myser.maskEmail(mobilelabel.Text)
        End If

    End Sub

   
End Class
