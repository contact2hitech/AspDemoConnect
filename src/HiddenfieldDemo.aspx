<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="HiddenfieldDemo.aspx.vb" Inherits="HiddenfieldDemo" EnableViewState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Name Please"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" Text="Check Value" />
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button5" runat="server" Text="Get Value" />
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC99">
        THIS IS DEMO FOR VIEWSTATE<br />
        <asp:Label ID="Label3" runat="server" Text="email please"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" Text="Store" />
        <asp:Label ID="lblViewstate" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button7" runat="server" Text="Display" />
    </asp:Panel>
</asp:Content>


