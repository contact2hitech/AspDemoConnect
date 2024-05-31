<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="liveinsertdemo.aspx.vb" Inherits="liveinsertdemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="SID:"></asp:Label>
    <asp:TextBox ID="txtsid" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="SNAME:"></asp:Label>
    <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="SMOBILE:"></asp:Label>
    <asp:TextBox ID="txtsmobile" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="SIMAGE: "></asp:Label>
    <asp:TextBox ID="txtimage" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnregister" runat="server" Text="Register" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <asp:Label ID="lblstatus" runat="server" Font-Bold="True" ForeColor="Red" 
        Text="Status Label"></asp:Label>
</asp:Content>


