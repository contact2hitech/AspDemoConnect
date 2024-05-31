<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SampleForm.aspx.vb" Inherits="SampleForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server" visible=false>
    <div style="background-color: #FFFF00">
    
        1<asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
    <head>
<form id="Form2" runat="server" visible=true style="background-color: #00FFFF">2<asp:Button 
    ID="Button2" runat="server" Text="Button" />
        </form>

</body>
</html>
