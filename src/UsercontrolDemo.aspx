<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="UsercontrolDemo.aspx.vb" Inherits="UsercontrolDemo" title="USER CONTROL Page" %>

<%@ Register Src="~/WebUserControl.ascx" TagName="SAMPLEUSERCONTROL" TagPrefix="hpp" %>
<%@ Register Src="~/WUCtest.ascx" TagName="SamplUC" TagPrefix="hpp2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">HELLO LABEL
        <asp:Label ID="Label1" runat="server" Text="MY PERSONAL LABEL"></asp:Label>
                </asp:PlaceHolder>
           
   
   
    <br />
    <asp:Button ID="btnLoadControl" runat="server" Text="Button" />
    <br />
    <asp:PlaceHolder ID="PlaceHolder2" runat="server">SAMPLE PLACEHOLDER 2</asp:PlaceHolder>
    <br />
           
   
   
</asp:Content>


