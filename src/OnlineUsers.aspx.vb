
Partial Class OnlineUsers
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da1 As New SqlDataAdapter
    Dim ds As Data.DataSet
    'Dim dv As DataView

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "abc@abc.com" Then
        Else
            Response.Redirect("LoginDemo.aspx")
        End If

        cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
        Dim qry As String = "select student_id,name,simage from reg_details Order By student_id Asc"
        cmd = New SqlCommand(qry, cn)
        da1 = New SqlDataAdapter(cmd)
        ds = New Data.DataSet
        da1.Fill(ds, "reg_details")

        DataList2.DataSource = ds.Tables(0)
        DataList2.DataBind()



    End Sub

    'Protected Sub DataList2_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles DataList2.ItemDataBound


    '    cn = New SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item("constrsql").ConnectionString)
    '    Dim qry As String = "select student_id,name,simage from reg_details Order By student_id Asc"
    '    cmd = New SqlCommand(qry, cn)
    '    da1 = New SqlDataAdapter(cmd)
    '    ds = New Data.DataSet
    '    da1.Fill(ds, "reg_details")

    '    Dim myimage As Image = DirectCast(e.Item.FindControl("imgonline"), Image)



    '    Dim imgid As String = ds.Tables(0).Rows(0).Item(2).ToString
    '    Dim sname As String = ds.Tables(0).Rows(0).Item(1).ToString
    '    Dim imgname As String = imgid
    '    Dim strimg As String = "~\profilephotos\" & imgname

    '    Dim myFilePath As String = Server.MapPath(strimg)

    '    If File.Exists(myFilePath) Then
    '        'myimage.AlternateText = sname & " 's Image"
    '        'myimage.ToolTip = sname & " 's Image"
    '        'myimage.BorderStyle = BorderStyle.Groove
    '        'myimage.BorderWidth = 10
    '        'myimage.ImageUrl = strimg
    '    Else
    '        'myimage.AlternateText = "Please Upload Your Photo"
    '        'myimage.ToolTip = "Please Upload Your Photo"
    '        'myimage.BorderStyle = BorderStyle.Groove
    '        'myimage.BorderWidth = 10
    '        'myimage.ImageUrl = "~\profilephotos\001.jpg"

    '    End If

    'End Sub
End Class
