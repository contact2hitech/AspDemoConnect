<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="PostBackDemo.aspx.vb" Inherits="PostBackDemo" title="PostBack Demo Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <asp:Button ID="btnCheck" runat="server" Text="Check" />


    </asp:Content>


