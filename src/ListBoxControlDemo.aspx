<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ListBoxControlDemo.aspx.vb" Inherits="ListBoxControlDemo" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListBox ID="ListBox1" runat="server" Rows="20" SelectionMode="Multiple">
    </asp:ListBox>
    <asp:Button ID="Button4" runat="server" Text="Add" />
    <asp:ListBox ID="ListBox2" runat="server" Rows="20" SelectionMode="Multiple">
    </asp:ListBox>
</asp:Content>


