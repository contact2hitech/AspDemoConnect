
Partial Class MultiviewDemo
    Inherits System.Web.UI.Page

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        MultiView1.ActiveViewIndex += 1
    End Sub

    Protected Sub btnPre_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPre.Click
        MultiView1.ActiveViewIndex -= 1
    End Sub

    Protected Sub btnAns_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAns.Click
        MultiView1.ActiveViewIndex += 1
    End Sub




    Protected Sub btnAnsShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAnsShow.Click
        lblShowAns.Text = "YOUR COLLEGE IS " & RadioButtonList1.SelectedItem.Text
    End Sub

    Protected Sub btn2Next_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn2Next.Click
        MultiView2.ActiveViewIndex += 1
    End Sub

    Protected Sub btn2Show_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn2Show.Click
        lblname.Text = TextBox1.Text
    End Sub



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        MultiView3.ActiveViewIndex += 1

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        MultiView3.ActiveViewIndex -= 1
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        MultiView3.ActiveViewIndex += 1
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        MultiView3.ActiveViewIndex -= 1
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        MultiView3.ActiveViewIndex = 0
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim cal As New Calendar
        cal.ID = "mycal"
        PlaceHolder1.Controls.Add(cal)
        Dim rbl As New RadioButtonList
        rbl.ID = "myradio"
        rbl.Items.Add("FYBCA")
        rbl.Items.Add("SYBCA")
        rbl.Items.Add("TYBCA")
        rbl.Items.Add("DEMO BY HPP")
        PlaceHolder1.Controls.AddAt(0, rbl)

    End Sub

    Protected Sub btnPrevmyview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPrevmyview.Click
        mynewmultiview.ActiveViewIndex = mynewmultiview.ActiveViewIndex - 1
    End Sub

    Protected Sub btnNextmyview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNextmyview.Click
        mynewmultiview.ActiveViewIndex = mynewmultiview.ActiveViewIndex + 1

    End Sub

    Protected Sub btnNextmyveiw2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNextmyveiw2.Click
        mynewmultiview.ActiveViewIndex = mynewmultiview.ActiveViewIndex + 1

    End Sub

    Protected Sub btnNextMyvie3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNextMyvie3.Click
        mynewmultiview.ActiveViewIndex = mynewmultiview.ActiveViewIndex + 1
    End Sub

    Protected Sub btnPrevview3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPrevview3.Click
        mynewmultiview.ActiveViewIndex = mynewmultiview.ActiveViewIndex - 1
    End Sub

    Protected Sub btnDisplay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDisplay.Click
        Dim str As String
        If CheckBox1.Checked = True Then
            str += " " & CheckBox1.Text
        End If
        If CheckBox2.Checked = True Then
            str += " " & CheckBox2.Text
        End If


        Label1.Text = "YOUR NAME IS " & txtName.Text & " and your address is " & TextBox2.Text & " <br>YOUR HOBBIES ARE " & str

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        MultiView4.ActiveViewIndex += 1
    End Sub
End Class
