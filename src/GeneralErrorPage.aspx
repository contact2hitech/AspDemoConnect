<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="GeneralErrorPage.aspx.vb" Inherits="GeneralErrorPage" title="Global Error Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <asp:Label ID="Label1" runat="server" CssClass="mylabel"></asp:Label>
    
</asp:Content>

<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

<center>
    <asp:Image ID="Image1" runat="server" Height="150px" 
        ImageUrl="~/image/404-error.jpg" Width="150px" />
</center>

</asp:Content>


