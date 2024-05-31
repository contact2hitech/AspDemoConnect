<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FileUploadDemo.aspx.vb" Inherits="FileUploadDemo" %>
<%@ Register Src="~/ucInformationDemo.ascx" TagName="tybca2" TagPrefix="sutex" %>
<%@ Register Src="~/myfooter.ascx" TagName="tybca3" TagPrefix="sutex" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #TextArea1 {
            height: 159px;
            width: 1010px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function TextArea1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        PLEASE SELECT A FILE<br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server"  />
        <asp:Button ID="btnupload" runat="server" Text="UPLOAD" />
        <asp:Button ID="btnupload2" runat="server" Text="UPLOAD 2" />
        <br />
        <br />
        <asp:Label ID="lblmessage" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Calendar ID="Calendar6" runat="server"></asp:Calendar>
        <br />
        <br />
        <h1>CODE FOR ABOVE DEMO </h1>
        <br />
        <textarea id="TextArea1" cols="20" rows="2" style=width:700px;height:500px  onclick="return TextArea1_onclick()">
        Partial Class FileUploadDemo
    Inherits System.Web.UI.Page
    Protected Sub btnupload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload.Click
        'Dim struname As String = Session("User")
        Dim savedir As String = "2017Uploads\"
        'Dim customfolder As String = struname + savedir
        'Response.Write(customfolder)
        Dim apppath As String = Request.PhysicalApplicationPath
        Response.Write("APPLICATION PATH IS:  " & apppath)
        Response.Write("<br>YOUR SELECTED FILE NAME IS: " & FileUpload1.FileName)
        If FileUpload1.HasFile Then
            Dim savepath As String = apppath & savedir & FileUpload1.FileName
            FileUpload1.SaveAs(savepath)
            'Response.Write("<br>SAVE PATH : " & savepath)
            lblmessage.Text = savepath & "<br>"
            lblmessage.Text &= "FILE UPLOADED SUCCESSFULLY"
        Else
            lblmessage.Text = "PLEASE SELECT A FILE "
        End If
    End Sub
    Protected Sub btnupload2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupload2.Click
        Dim str As String
        str = Server.MapPath("2016Uploads")
        Response.Write(str)
        If FileUpload1.HasFile Then
            If FileUpload1.FileBytes.Length < 512000 Then
                str = str & "\" & FileUpload1.FileName
                FileUpload1.SaveAs(str)
                lblmessage.Text &= "FILE UPLOADED SUCCESSFULLY at " & str & " and size was : " & FileUpload1.FileBytes.Length
            Else
                lblmessage.Text = "FILE SIZE MUST BE LESS THAN 500Kb"
            End If
            
        Else
            lblmessage.Text = "ERROR something wrong happened"
        End If

    End Sub
End Class


        </textarea>

        <br />
    <sutex:tybca2 ID="myusercontrol" runat="server" />
    <sutex:tybca3 ID="dsfdfsd" runat="server" />
    </div>
    
        <h1>THIS IS DEMO OF FILE UPLOAD</h1>
    <asp:FileUpload ID="FileUpload2" runat="server" />

    <asp:Button ID="Button1" runat="server" Text="TRANSFER DATA" />
    <asp:Label ID="lbl201920" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>

    </form>
    <p>
        &nbsp;</p>

</body>
</html>
