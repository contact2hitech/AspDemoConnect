
Partial Class myfooter
    Inherits System.Web.UI.UserControl

    
    Public Shared Function GetIPAddress() As String
        Dim context As System.Web.HttpContext = System.Web.HttpContext.Current
        Dim sIPAddress As String = context.Request.ServerVariables("HTTP_X_FORWARDED_FOR")
        If String.IsNullOrEmpty(sIPAddress) Then
            Return context.Request.ServerVariables("REMOTE_ADDR")
        Else
            Dim ipArray As String() = sIPAddress.Split(New [Char]() {","c})
            Return ipArray(0)

        End If
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Profile.fname = "" Or Profile.lname = "" Then
        'Else
        '    lblip.Text = "HELLO " & Profile.fname & ". "
        'End If
        If Not Page.IsPostBack Then
            lblip.Text &= "Your IP Address is :  " & GetIPAddress()

            lblip.Text &= "<br> Today's Special Day is " & System.Web.Configuration.WebConfigurationManager.AppSettings("specialdish").ToString

            lblip.Text &= "Current YEar is : " & Now.Year + 1
        End If

    End Sub

    
End Class
