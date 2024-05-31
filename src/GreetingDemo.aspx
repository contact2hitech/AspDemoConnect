<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="GreetingDemo.aspx.vb" Inherits="GreetingDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>DEMO FOR GREETING USER</h2>
    
    <asp:Label ID="Label1" runat="server" Text="Please Enter YOur Name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" Text="Greet User" />
    <asp:Label ID="Label2" runat="server" Text="Hello :"></asp:Label>
</asp:Content>


