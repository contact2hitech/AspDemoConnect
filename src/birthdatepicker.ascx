<%@ Control Language="VB" AutoEventWireup="false" CodeFile="birthdatepicker.ascx.vb" Inherits="birthdatepicker" %>
<asp:Panel ID="Panel1" runat="server" BackColor="#FF99CC" Width="268px">
<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="PICK" />
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
</asp:Panel>
<asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>

