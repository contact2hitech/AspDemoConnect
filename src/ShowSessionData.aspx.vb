
Partial Class ShowSessionData
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            'Label1.Text = "YOUR SESSION DETAILS  : USERNAME =  " & Session("TestUname") & " <br>  MOBILE = " & Session("TestUmob")
            'Label1.Text &= " <br>  You are login since :   " & Session("TestLtime") & " <br>"


            ' COPY DATA FROM THIS LOCATION

            Label1.Text &= "<br> SESSION ID : " & Session.SessionID
            Label1.Text &= "<br> IS NEW SESSION  : " & Session.IsNewSession
            Label1.Text &= "<br> IS COOKIE LESS : " & Session.IsCookieless
            Label1.Text &= "<br> IS READONLY : " & Session.IsReadOnly
            Label1.Text &= "<br> SESSION TIMEOUT : " & Session.Timeout
            Label1.Text &= "<br> SESSION OBJECT COUNT : " & Session.Count
            Label1.Text &= "<br> SESSION MODE : " & Session.Mode.ToString


            ' COPY DATA STILL THIS LINE
            ' Label1.Text &= "<br> VISITOR ARE : " & Application("visitorno")

            Label1.Text &= "<br> ROLL NO  : " & Session("studid")
            Label1.Text &= "<br> NAME : " & Session("stuname")
            Label1.Text &= "<br>"
            Dim incou As Integer
            For incou = 0 To Session.Count - 1
                DropDownList3.Items.Add(Session(incou))
                DropDownList2.Items.Add(Session.Keys(incou))
            Next


        End If


    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Session.Abandon()
        'Session.Clear()
        'Response.Redirect("ShowSessionData.aspx")

    End Sub

    
    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        DropDownList3.SelectedIndex = DropDownList2.SelectedIndex
    End Sub
End Class
