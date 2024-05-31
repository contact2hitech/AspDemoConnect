<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BCA.aspx.vb" Inherits="BCA" ErrorPage="~/GeneralErrorPage.aspx" %>

<%@ Register src="myfooter.ascx" tagname="myfooter" tagprefix="uc1" %>
<%@ Register TagPrefix="SUTEX" TagName="CUSTCALENDER" Src="~/birthdatepicker.ascx" %>
<%@ Register Src="~/myfooter.ascx" TagName="ip" TagPrefix ="u123" %>

<%@ Register src="dobpicker.ascx" tagname="dobpicker" tagprefix="uc2" %>
<%@ Register Src ="~/dobpicker.ascx" TagName="tybca1" TagPrefix="ty" %>

<%@ Register src="WUCtest.ascx" tagname="WUCtest" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BCA Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
    
    </div>
    <uc1:myfooter ID="myfooter1" runat="server" />
    <asp:TextBox ID="TextBox1" runat="server" Width="259px"></asp:TextBox>
    
    <asp:LinkButton ID="LinkButton1" runat="server">Pick</asp:LinkButton>
    
    <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    <br />
    <br />
    <br />
    <p>
        &nbsp;<SUTEX:CUSTCALENDER ID ="mycustcal" runat="server" /><p>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
        Font-Names="Arial Rounded MT Bold" Font-Size="18pt" Text="Label"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Generate Error" />
    <uc3:WUCtest ID="WUCtest1" runat="server" />
    <u123:ip ID="myip123" runat="server" />
    
    
    
</form>
</body>
</html>
