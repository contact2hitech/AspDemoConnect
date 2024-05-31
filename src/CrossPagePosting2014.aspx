<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="CrossPagePosting2014.aspx.vb" Inherits="CrossPagePosting2014" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="PLEASE ENTER NAME"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID="btnPost" runat="server" PostBackUrl="~/PostedPage2014.aspx" 
        Text="Go to" />
</asp:Content>


