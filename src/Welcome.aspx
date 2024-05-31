<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Welcome.aspx.vb" Inherits="Welcome" title="Please Wait....!!!!!" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<center> <h2>
Welcome Dear Student to ASP.NET Demos</h2></center>
<center><h4 style="color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
You are being Redirected to Random Link:
<asp:Label ID="lblRedirect" runat="server" BackColor="#FF66CC" 
        Font-Names="Monotype Corsiva" Font-Size="20pt"></asp:Label>
</h4>
</center>
</div>
<center>
<asp:Label ID="lblinfo" runat="server"></asp:Label>
<asp:Image ID="Image1" runat="server" Height="96px" ImageUrl="~/image/processing.gif" Width="129px" />
<asp:Image ID="Image2" runat="server" Height="96px" 
        ImageUrl="~/image/processing.gif" Width="129px" Visible="False" />
</center>
</asp:Content>

