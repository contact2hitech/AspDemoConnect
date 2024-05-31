<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ShowSessionData.aspx.vb" Inherits="ShowSessionData" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp; KEY OF SESSION<asp:DropDownList ID="DropDownList2" runat="server" 
        AutoPostBack="True">
    </asp:DropDownList>
&nbsp;VALUE OF SESSION
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
&nbsp;<asp:Button ID="Button4" runat="server" 
        Text="Logout" />
    <br />
</asp:Content>


