<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="CrossPagePostingDemo.aspx.vb" Inherits="CrossPagePostingDemo" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        SAMPLE PAGE FOR DEMONSTRATION OF CROSS PAGE POSTING</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="ENTER SOME TEXT HERE"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnCross" runat="server" PostBackUrl="~/PostedPage.aspx" 
            Text="Show Demo" />
    </p>
</asp:Content>

