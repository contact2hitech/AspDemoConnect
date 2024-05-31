<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ThemeDemo.aspx.vb" Inherits="ThemeDemo" title="Theme Demo " Theme="Dec"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="lblname" runat="server" Text="PLEASE ENTER YOUR NAME"></asp:Label>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:Button ID="btnshow" runat="server" Text="MONSOON" />
    <asp:Button ID="Button1" runat="server" Text="Summer Button" SkinId=mysummer />
    <asp:Button ID="Button2" runat="server" Text="Winter Button" 
        SkinID="myspring" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>Summer</asp:ListItem>
        <asp:ListItem>Winter</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lblCal1" runat="server" Text="SAMPLE CALENDER 1"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" SkinID="mycal"></asp:Calendar>
    <br />
    <h1>HELLO</h1>
    <h2>HOW</h2>
    <h3>ARE</h3>
    <h4>YOU</h4>
    
    <asp:Label ID="lblcal2" runat="server" Text="SAMPLE CALENDER 2"></asp:Label>
    <asp:Calendar ID="cal2" runat="server" SkinID="mycal" />
    
    
    <asp:Button ID="Button6" runat="server" Text="Button" />
    <asp:Button ID="Button7" runat="server" Text="Button" />
    <asp:Button ID="Button8" runat="server" Text="Button" />
    
    
    <asp:Button ID="Button3" SkinID=myspring runat="server" Text="Button"  />
    <asp:Button ID="Button5" runat="server" Text="Button" />
    <asp:Button ID="Button4" runat="server" Text="Button" />
    
</asp:Content>

