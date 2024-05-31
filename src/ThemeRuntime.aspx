<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ThemeRuntime.aspx.vb" Inherits="ThemeRuntime" Theme="Jan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Theme Runtime Changing Page</title>
    <style type="text/css">
        #TextArea1
        {
            height: 106px;
            width: 725px;
        }
        #TextArea2
        {
            height: 124px;
            width: 721px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <center>
    
           <table align="center" width="750" border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td class="siteLogo" style="height: 96px">
                    TESTING THEME DEMO
        <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="True">
        <asp:ListItem>Dec</asp:ListItem>
        <asp:ListItem>Jan</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lblCal1" runat="server" Text="SAMPLE CALENDER 1"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" style="margin-bottom: 0px" ></asp:Calendar>
    <br />
    </td>         </tr>
    <tr>
    <td>
    <h1>HELLO</h1>
    <h2>HOW</h2>
    <h3>ARE</h3>
    <h4>YOU</h4>
    <asp:Label ID="lblcal2" runat="server" Text="SAMPLE CALENDER 2"></asp:Label>
    <asp:Calendar ID="cal2" runat="server" />
    <asp:Button ID="Button6" runat="server" Text="Button" SkinID="WBtn1" />
    <asp:Button ID="Button7" runat="server" Text="Button" />
    <asp:Button ID="Button8" runat="server" Text="Button" SkinID="WBtn1" />
    <asp:Button ID="Button3"  runat="server" Text="Button" SkinID="WBtn2"  />
    <asp:Button ID="Button5" runat="server" Text="Button" SkinID="WBtn1" />
    <asp:Button ID="Button4" runat="server" Text="Button" SkinID="WBtn2" />
    <asp:Label ID="lblname" runat="server" Text="PLEASE ENTER YOUR NAME"></asp:Label>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:Button ID="btnshow" runat="server" Text="MONSOON" />
    <asp:Button ID="Button1" runat="server" Text="Summer Button"  />
    <asp:Button ID="Button2" runat="server" Text="Winter Button"     />
    </td>
    </tr>
    
    <tr>
    <td>
    <h2>Source Information:</h2>
           <textarea id="TextArea1"><asp:Literal ID="ltlsource" runat="server">
<%--           Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.IO
Partial Class ThemeRuntime
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("TOTAL VISTOR : " & Application("visitorno"))
    End Sub
    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        Dim thm As String
        thm = Session("themeselected")
        If thm IsNot Nothing Then
            Page.Theme = thm
            ddlTheme.Text = thm
        Else
            Session("themeselected") = ddlTheme.Text
            Page.Theme = "Jan"
        End If
    End Sub

    Protected Sub ddlTheme_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlTheme.SelectedIndexChanged
        Session("themeselected") = ddlTheme.Text
        Server.Transfer(Request.FilePath)
    End Sub
End Class
--%>
           </asp:Literal>
           </textarea>
        	<h2>Code Information:</h2>
           <textarea id="TextArea2"><asp:Literal ID="ltlcode" runat="server"></asp:Literal>
           </textarea>
    </td>
    </tr>
    </table>
    
    </center>
    </form>
</body>
</html>
