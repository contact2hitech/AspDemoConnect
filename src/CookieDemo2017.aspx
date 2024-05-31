<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="CookieDemo2017.aspx.vb" Inherits="CookieDemo2017" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
   
    <asp:Label ID="Label1" runat="server" Text="YOUR COOKIE DATA"></asp:Label>
    <asp:TextBox ID="txtCookieData" runat="server" Height="22px"></asp:TextBox>
    <asp:Button ID="btnCookieSave" runat="server" Text="Create Cookie" />
       <asp:Label ID="lblExp" runat="server" Text="Expires"></asp:Label>
   
   
   
   
    <asp:Button ID="btnReadCk" runat="server" Text="Read Cookie" />
    <asp:Button ID="btnDeleteCookie" runat="server" Text="Delete" />
   
   
   
   
   <center><h1>IMP NOTE:</h1></center>

   <h3>
   The browser does not transmit the expiration date of a cookie to servers, this is as per HTTP specification.

Browsers only send the cookie name and value only.

The Expires property on the cookie object is only used when setting expiration date on a cookie that is going to be written in a response, not read in a request.

When reading the cookie is Expires property value is always going to be null. 
   </h3>
</asp:Content>


