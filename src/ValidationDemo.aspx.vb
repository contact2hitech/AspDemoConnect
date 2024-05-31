
Partial Class ValidationDemo
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txtAge.Text = ""
        txtEmail.Text = ""
        txtMobile.Text = ""
        txtName.Text = ""
        txtpwd.Text = ""
        txtcpwd.Text = ""
        'MsgBox("HELLO ")
    End Sub

    Protected Sub CustomValidator2_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator2.ServerValidate

        If Convert.ToInt32(args.Value) Mod 2 = 0 Then
            args.IsValid = True

        Else
            args.IsValid = False
        End If





    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack Then
            If Page.IsValid Then

            Else
                CustomValidator2.ErrorMessage = "EVEN NUMBER ONLY"

            End If
        End If
        
    End Sub
End Class
