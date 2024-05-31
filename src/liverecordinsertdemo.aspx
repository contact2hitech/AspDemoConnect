<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="liverecordinsertdemo.aspx.vb" Inherits="liverecordinsertdemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="SID"></asp:Label>
    <asp:TextBox ID="txtsid" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="SNAME"></asp:Label>
    <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="SMOBILE"></asp:Label>
    <asp:TextBox ID="txtsmobile" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="SIMAGE"></asp:Label>
    <asp:TextBox ID="txtsimage" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="CID"></asp:Label>
    <asp:TextBox ID="txtcid" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnRegister" runat="server" Text="Register" />
    <asp:Button ID="btncancel" runat="server" Text="Cancel" />
    <asp:Label ID="lblstatus" runat="server" BackColor="White" Font-Bold="True" 
        Font-Size="Medium" ForeColor="Blue" Text="Label"></asp:Label>
</asp:Content>


