<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="CookieDemo.aspx.vb" Inherits="CookieDemo" title="THIS IS DEMO PAGE FOR COOKIE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        THIS IS DEMO PAGE FOR COOKIE</p>
    <p>
        <asp:Label ID="lblwelcome"  CssClass ="sidebar_box_bottom" runat="server"></asp:Label>
    </p>
    <div>
        
        <asp:Table ID="Table1" runat="server">
        
            <asp:TableRow runat="server">
            <asp:TableCell>
            PLEAE ENTER YOUR NAME
            </asp:TableCell>
            <asp:TableCell>
                    <asp:TextBox ID="txtname"
            runat="server"></asp:TextBox>
        
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
            <asp:TableCell>
            PLEAE ENTER YOUR MOBILE
            </asp:TableCell>
            <asp:TableCell>
                    <asp:TextBox ID="txtmobile"
            runat="server"></asp:TextBox>
        
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
        </asp:Table>
        <asp:Button ID="Button1" runat="server" 
            Text="Ok" style="width: 31px" /> 
         <asp:Button ID="btnReadCookie" runat="server" Text="Read Cookie" />
         <asp:Button ID="btnDeleteCookie" runat="server" Text="Delete Cookie" />
         <asp:Button ID="btnCookieDetails" runat="server" Text="Cookie Details" />
         <br />
         <textarea style="height: 383px; width: 549px">
Partial Class CookieDemo
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ck As New HttpCookie("SAMPLE")
        ck.Values.Add("Name", txtname.Text)
        ck.Values.Add("Mobile", txtmobile.Text)
        ck.Values.Add("Time", DateTime.Now.ToString)
        ck.Values.Add("colo", "Red")
        ck.Expires = DateTime.Now.AddDays(1)
        Response.Cookies.Add(ck)
        lblwelcome.Text = "Cookie successfully saved"
        '        Response.Redirect("CookieDemo.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim CK As HttpCookie = Request.Cookies("SAMPLE")
            Dim r As New Drawing.Color
            If CK IsNot Nothing Then
                Dim str1, str2, str3 As String
                str1 = CK.Values("Name")
                str2 = CK.Values("Mobile")
                str3 = CK.Values("Time")
                r = Drawing.Color.FromName(CK.Values("colo"))
                lblwelcome.BackColor = r
                lblwelcome.Text = "GREETINGS " & str1 & " how are you. iS YOUR cELL NO  " & str2 & "<br> YOU VISITED last time on " & str3
            End If
        End If
       
    End Sub
End Class
         </textarea>   
            </div>
</asp:Content>

