<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="DemoQueryString.aspx.vb" Inherits="Default4" title="Query String Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <p>
        This page is for Demo of Query String</p>
    <h2>
    Hello from ADMIN.Welcome <asp:Label ID="lblSession" runat="server"></asp:Label></h2>
    <div class="news_box" >
    <p >&nbsp;Dear users All examples are shown here for demonstraton purpose only 
        please make appropriate changes in your Own website and create samples for the 
        Study.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p >
            <asp:Label ID="Label1" runat="server" Text="PLEASE SELECT COURSE"></asp:Label>
            <asp:DropDownList ID="ddldept" runat="server">
                <asp:ListItem Value="1">bca</asp:ListItem>
                <asp:ListItem Value="2">bba</asp:ListItem>
                <asp:ListItem Value="3">bcom</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnShow" runat="server" Text="SHOW RECORDS" />
        </p>
                         <p >
                             SERVER .URLENCODE
                             <asp:TextBox ID="txtUrlEncode" runat="server"></asp:TextBox>
        </p>
                         <p >
                             SHOW PAGE OF GRIDVIEW DEMO
                             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                             <asp:Button ID="Button4" runat="server" Text="Show Records" />
        </p>
                         <p >
                             &nbsp;</p>    
      
    </div>
    <p>Code For this Page: </p>
    <textarea style="height: 496px; width: 542px" name="S1">
    
Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        'ddldept.SelectedValue.ToString
        Response.Redirect("DemoQueryString2.aspx?dept=" & Server.UrlEncode(ddldept.SelectedValue.ToString))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim uname, umob As String
        uname = Session("Uname")
        umob = Session("Umob")
        lblSession.Text = " dear " & uname & " . your mobile no is " & umob & " SESS ID IS: " & Session.SessionID
        '  lblprofile.Text = "HELLO " & Profile.fname

    End Sub

    Protected Sub Button4_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("GridviewDemo.aspx?Sid=" & TextBox1.Text)
    End Sub
End Class

</textarea><br />
    <asp:Label ID="lblprofile" runat="server" Text=""></asp:Label>
&nbsp;
</asp:Content>

