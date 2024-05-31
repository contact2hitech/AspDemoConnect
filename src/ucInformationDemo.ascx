<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucInformationDemo.ascx.vb" Inherits="ucInformationDemo" %>
<asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99">
    PLease Enter Your Name :
    <asp:TextBox ID="txtucName" runat="server"></asp:TextBox>
    <asp:Button ID="btnucShow" runat="server" Text="Show" 
        CausesValidation="False" />
    <asp:Label ID="lblucName" runat="server" Text="Label" Font-Bold="True" 
        Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="20pt" 
        ForeColor="Red"></asp:Label>
    
</asp:Panel>

