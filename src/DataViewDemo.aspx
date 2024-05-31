<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="DataViewDemo.aspx.vb" Inherits="DataViewDemo" title="DataView Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:Button ID="Button4" runat="server" Text="ROW FILTER" />
<br />
<asp:Button ID="Button5" runat="server" Text="SORT DEMO" />
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
</asp:Content>


