<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ProfileDemo.aspx.vb" Inherits="ProfileDemo" title="Profile Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Deprecated Demo. Don't Use It </h2>
    <asp:Label ID="lblProfile" runat="server"></asp:Label>
    <br />
        <asp:Label ID="lblUName" runat="server">USER NAME</asp:Label>
    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblDesignation" runat="server">Designation</asp:Label>
    <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblcolor" runat="server">Color</asp:Label>
    <asp:TextBox ID="txtcolor" runat="server" Height="22px"></asp:TextBox>
    <br />
    <asp:Button ID="btnPSave" runat="server" Text="Save Profile Data" />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
        PostBackUrl="~/ReadAppSettings.aspx">CHECK APP SETTINGS</asp:LinkButton>
        <br />
        <br /><br />
        <h1>USE THIS DEMO </h1>
             <h2>Demo for 2016 Batch</h2>
        <p>
    THIS IS DEMO OF PROFILE ON X73:</p>
<p>
    <asp:Label ID="lblprofile2016" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Chocolate"
        Font-Size="20pt"></asp:Label>
</p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem>INDIA</asp:ListItem>
        <asp:ListItem>PK</asp:ListItem>
        <asp:ListItem>CHINA</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btncountry" runat="server" Text="Set Country" />
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>yellow</asp:ListItem>
        <asp:ListItem>red</asp:ListItem>
    </asp:DropDownList>
</p>

</asp:Content>

