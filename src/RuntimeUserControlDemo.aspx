<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RuntimeUserControlDemo.aspx.vb" Inherits="RuntimeUserControlDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/ucInformationDemo.ascx" TagName="myucDemo" TagPrefix="sutex" %>


<%@ Register src="dobpicker.ascx" tagname="dobpicker" tagprefix="uc1" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Runtime User Control Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:Button ID="btnAdd" runat="server" Text="Add Control" />
   
        <br />
        <br />
   
    </div>
    <uc1:dobpicker ID="dobpicker1" runat="server" />
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
    </form>
</body>
</html>
