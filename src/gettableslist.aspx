<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="gettableslist.aspx.vb" Inherits="gettableslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h4>Click Button and Select Your Database and then Table Name   </h4>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
        EnableModelValidation="True" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:GridView>
</asp:Content>


