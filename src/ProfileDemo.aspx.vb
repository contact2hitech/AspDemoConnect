
Partial Class ProfileDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblUName.Text = System.Web.Configuration.WebConfigurationManager.AppSettings.Item("myname").ToString
        setprofile()

        'If Not Page.IsPostBack Then
        Dim strprofile As String = Profile.country
        If strprofile = "" Then
            lblprofile2016.Text = "PLEASE SELECT YOUR COUNTRY"
            '    DropDownList1.Visible = True
            '   Profile.country = DropDownList1.SelectedItem.ToString
        Else
            ' DISPLAY COUNTRY FROM PROFILE
            lblprofile2016.Text = "YOUR COUNTRY IS " & strprofile
            lblprofile2016.Text &= "<br> and YOUR BALANCE IS " & Profile.STUDENT_DETAILS.amount_bal
            '   DropDownList1.Visible = True
            'End If
        End If

    End Sub

    Protected Sub btnPSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPSave.Click
        '    Profile.PersonalInfo.Usname = txtUname.Text
        '   Profile.generalinfo.Designation = txtDesignation.Text
        Profile.generalinfo.Color = txtcolor.Text
        Profile.PersonalInfo.Mobile = txtUname.Text

        setprofile()

    End Sub
    Public Sub setprofile()
        'If Profile.generalinfo.Designation = String.Empty Or Profile.generalinfo.Color = String.Empty Or Profile.PersonalInfo.Usname = String.Empty Then
        '    lblProfile.Text = "WELCOME USER UNKNOWN AND DESIGNATION UNKNOWN"
        '    lblProfile.Text &= " TESTING USERNAME: " & Profile.UserName

        'Else
        '    lblProfile.Text = " YOUR NAME IS : " & Profile.PersonalInfo.Usname & " and your details i.e Designation =  " & Profile.generalinfo.Designation & " Favourite color = " & Profile.generalinfo.Color
        '    lblDesignation.Text = " YOU ARE : " & Profile.generalinfo.Designation
        '    System.Web.Configuration.WebConfigurationManager.AppSettings.Item("myname") = txtUname.Text
        'End If

    End Sub

    Protected Sub btncountry_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncountry.Click
        Profile.country = DropDownList1.SelectedItem.ToString


        Response.Redirect("ProfileDemo.aspx")
    End Sub
End Class
