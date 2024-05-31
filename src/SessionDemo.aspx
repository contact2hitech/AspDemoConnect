<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="SessionDemo.aspx.vb" Inherits="Default3" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblname" runat="server" Text="NAME"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblMob" runat="server" Text="Mobile"></asp:Label>
    <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnOk" runat="server" Text="Go" />
    <br />
    <br />
    <br />
    cnmysqlcred = New MySqlConnection(&quot;server=192.168.10.227;user 
    id=TYBCA;database=TYBCA;Password=wwewww;&quot;)

    <asp:TextBox ID="mytext1" Text="cnmysqlcred = New MySqlConnection('server=192.168.10.227;user id=TYBCA;database=TYBCA;Password=----;')" runat="server"></asp:TextBox>
</asp:Content>

