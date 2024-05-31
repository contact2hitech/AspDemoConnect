<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server" 
    style="font-family: 'Monotype Corsiva'; font-size: x-large; font-style: normal; color: #3333CC; border-style: dashed; border-width: thin">
    <div>
    
       <center> <h1 style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            Sutex BCA Students Demos</h1></center>
        <center><h1 style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            Sample2013 DemoResponse.Write(&quot;CONNECTION STRING IS::::: &quot;)</h1>
                <p style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1">
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/MyWeb.mdb" SelectCommand="SELECT * FROM [WebMaster]">
                    </asp:AccessDataSource>
                </p>
                <p style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                    &nbsp;</p>
            </center>
    
    </div>
        <center>
        
        <asp:Label ID="lblinfo" runat="server"></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="96px" 
                ImageUrl="~/image/processing.gif" Width="129px" />
        </center>
        <br />
    </form>
<p style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px">
    &nbsp;</p>
</body>
</html>
