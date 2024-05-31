<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Objectof_ASP_NET.aspx.vb" Inherits="Objectof_ASP_NET" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="TEST SERVER OBJECT"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" Height="163px" TextMode="MultiLine" 
    Width="313px" AutoPostBack="True"></asp:TextBox>
<asp:Button ID="Button4" runat="server" Text="CHECK" />
</asp:Content>


