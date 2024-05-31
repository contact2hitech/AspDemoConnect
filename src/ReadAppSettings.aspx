<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ReadAppSettings.aspx.vb" Inherits="ReadAppSettings" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblConn" runat="server" Text="NEW CONNECTION STRING"></asp:Label>
    <asp:TextBox ID="txtConnChange" runat="server"></asp:TextBox>
    <asp:Button ID="btnChangeConn" runat="server" Text="Change Conn" />
    <br />
    <br />
    <h2>THIS IS DEMO FOR 2016</h2>
    <asp:Label ID="Label2" runat="server" BackColor="#99FF99" Font-Bold="False" 
        Font-Size="12pt" ForeColor="#FF0066"></asp:Label>
</asp:Content>


