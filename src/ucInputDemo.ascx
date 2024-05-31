<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucInputDemo.ascx.vb" Inherits="ucInputDemo" %>
<asp:Panel ID="Panel1" runat="server" BackColor="#99FF66">
    Please Enter Your Name :
    <asp:TextBox ID="txtucname" runat="server"></asp:TextBox>
    <asp:Label ID="lblucname" runat="server"></asp:Label>
    <asp:Button ID="btnucshow" runat="server" Text="Show" 
        CausesValidation="False" />
</asp:Panel>

