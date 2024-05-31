Imports System.Web.Configuration.WebConfigurationManager
Partial Class ReadAppSettings
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'DEPRECIATED code Since 6/9/2016
        'If System.Web.Configuration.WebConfigurationManager.AppSettings.Item("mydemoconn123") = "" Then
        '    Label1.Text = System.Web.Configuration.WebConfigurationManager.AppSettings.Item("myname").ToString
        'Else

        '    Label1.Text = System.Web.Configuration.WebConfigurationManager.AppSettings.Item("mydemoconn123").ToString
        'End If

        'code for fetching app settings
        Label2.Text &= "<h3>Reading App Settings : </h3>"

        Dim icon As Integer
        For icon = 0 To System.Web.Configuration.WebConfigurationManager.AppSettings.Count - 1
            Label2.Text &= icon & ":"
            Label2.Text &= System.Web.Configuration.WebConfigurationManager.AppSettings.Keys(icon).ToString & " : "
            Label2.Text &= System.Web.Configuration.WebConfigurationManager.AppSettings.Item(icon).ToString & "<br>"
        Next

        'code for fetching connection strings
        Label2.Text &= "<h3>Reading Connection Strings : </h3>"
        Dim iconstr As Integer
        For iconstr = 0 To System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Count - 1
            Label2.Text &= iconstr & ":"
            Label2.Text &= System.Web.Configuration.WebConfigurationManager.ConnectionStrings(iconstr).Name & "<br>"
            Label2.Text &= System.Web.Configuration.WebConfigurationManager.ConnectionStrings.Item(iconstr).ToString & "<br>"
        Next


        'code for fetching Profile Data
        
        Label2.Text &= "<h3>Reading Profile : </h3>"

        Label2.Text &= Profile.country & "<br>"
        Label2.Text &= Profile.UserName & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.account_type & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.amount_bal & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.city & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.div & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.emailid & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.mobile & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.name & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.simage & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.student_id & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.tptacoountbal & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.uid & "<br>"
        Label2.Text &= Profile.STUDENT_DETAILS.uname & "<br>"
        Label2.Text &= Profile.generalinfo.City & "<br>"
        Label2.Text &= Profile.generalinfo.currency & "<br>"
        Label2.Text &= Profile.generalinfo.Color & "<br>"
        Label2.Text &= Profile.Bhasha

        'NEXT DEMO
        Label2.Text &= "<h1> FORMATED OUTPUT SHOULD BE DISPLAYED</h1>"

        'Label2.Text = "THIS USER IS ANONYMOUS : " & Profile.IsAnonymous
        'Label2.Text &= "THIS USER NAME IS: " & Profile.UserName
        'Label2.Text &= "<br>THIS USER  IS DIRTY : " & Profile.IsDirty
        'Label2.Text &= "<br>THIS USER  IS ACTIVE SINCE: " & Profile.LastActivityDate
        'Label2.Text &= "<br>THIS USER  IS UPDATED ON: " & Profile.LastUpdatedDate




    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Me.Title = System.Web.Configuration.WebConfigurationManager.AppSettings.Item("myname").ToString
    End Sub

    Protected Sub btnChangeConn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnChangeConn.Click
        System.Web.Configuration.WebConfigurationManager.AppSettings.Item("mydemoconn123") = txtConnChange.Text
    End Sub
End Class
