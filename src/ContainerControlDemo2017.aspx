<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ContainerControlDemo2017.aspx.vb" Inherits="ContainerControlDemo2017" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>This is Demo of Container Controls</h2>
<h2>Placeholder Control (Container Controls)</h2>
<asp:Button ID="btnAdd" runat="server" Text="Add Controls" />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</asp:Content>


