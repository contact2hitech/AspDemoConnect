
Partial Class adoDemowithcoding
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User") = "" Then
            Response.Redirect("LoginDemo.aspx")
        Else

            Dim cn As New SqlConnection("Data Source=X73\SQLEXPRESS;Initial Catalog=Demos;Integrated Security=True")
            Dim cmd As New SqlCommand("select * from hitlist", cn)
            Dim da As New SqlDataAdapter(cmd)
            Dim ds As New DataSet
            da.Fill(ds, "Sutexbca")
            GridView1.DataSource = ds.Tables("Sutexbca")
            GridView1.DataBind()
            DataList1.DataSource = ds.Tables("Sutexbca")
            DataList1.DataBind()
            Repeater1.DataSource = ds.Tables("Sutexbca")
            Repeater1.DataBind()




        End If


    End Sub
End Class
