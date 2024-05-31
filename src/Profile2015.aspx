<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Profile2015.aspx.vb" Inherits="Profile2015" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>



<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>SURAT</asp:ListItem>
        <asp:ListItem>AHMENDABAD</asp:ListItem>
        <asp:ListItem>BARODA</asp:ListItem>
        <asp:ListItem>RAJKOT</asp:ListItem>
        <asp:ListItem>DELHI</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="STORE" />
    <asp:Button ID="Button2" runat="server" Text="READ" />
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>




