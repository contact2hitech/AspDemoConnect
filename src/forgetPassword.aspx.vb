
Partial Class forgetPassword
    Inherits System.Web.UI.Page

    
    Protected Sub btnRequestOTP_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRequestOTP.Click
        Dim myrefotp As New OTPDemo.Service

        If Not myrefotp.requestOTP(txtEmail.Text) = "User Not Registered" Or myrefotp.requestOTP(txtEmail.Text) = "Oops OTP Generation Failed..!!!" Or myrefotp.requestOTP(txtEmail.Text) = "System Error: " Then
            lblmystatus.Text = "OTP Generated. Check Your Email (" & myrefotp.maskEmail(txtEmail.Text) & "). Valid for 48 Hours...! "
            clearall()

        Else
            lblmystatus.Text = "User Not Registered Or OTP Error."
            clearall()
        End If
    End Sub

    Public Sub clearall()
        txtcnfpwd.Text = ""
        txtEmail.Text = ""
        txtEmailRes.Text = ""
        txtNewpwd.Text = ""
        txtOTP.Text = ""

    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmystatus.Text = "OTP is Valid for 48 Hours..!!!"

    End Sub

    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReset.Click
        Try
            Dim myrefotp As New OTPDemo.Service
            If Not myrefotp.requestOTP(txtEmailRes.Text) = "User Not Registered" Or myrefotp.requestOTP(txtEmailRes.Text) = "Oops OTP Generation Failed..!!!" Or myrefotp.requestOTP(txtEmailRes.Text) = "System Error: " Then

                If myrefotp.requestOTP(txtEmailRes.Text).Trim = txtOTP.Text.Trim Then


                    If myrefotp.updatedata(txtEmailRes.Text.Trim, txtNewpwd.Text.Trim) > 0 Then

                        lblmystatus.Text = "Password Reset Success...!"
                        clearall()
                    Else
                        lblmystatus.Text = "Error...!"
                        clearall()
                    End If


                Else
                    lblmystatus.Text = "OTP is Incorrect..!"


                End If

                
            Else
                lblmystatus.Text = "User Not Registered..! "
                clearall()
            End If
        Catch ex As Exception

        End Try
        

    End Sub
End Class
