<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ClientSideStateManagement.aspx.vb" Inherits="ClientSideStateManagement" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        HIDDENFILED DEMO</p>
    <p>
        <asp:Label ID="lblno" runat="server" Text="Please Enter Data"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="Save Data" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:Label ID="lblAns" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        
          <p>
        SAMPLE VIEWSTATE DEMO</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="No1:"></asp:Label>
        <asp:TextBox ID="txtno1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnStore" runat="server" Text="STORE" />
        <asp:Button ID="btnTransfer" runat="server" Text="TRANSFER" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="No2:"></asp:Label>
        <asp:TextBox ID="txtno2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>


