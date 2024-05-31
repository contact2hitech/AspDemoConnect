<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="BBA.aspx.vb" Inherits="BBA" %>

<%@ Register src="myfooter.ascx" tagname="myfooter" tagprefix="uc1" %>

    
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       
        
              <div>
    
        <asp:Label ID="lblLogin" runat="server" BackColor="#FF0066" ForeColor="#003300" 
            Text="Label"></asp:Label>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
    
    </div>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
        Text="LOGOUT" />
    <br />
    
    <uc1:myfooter ID="myfooter1" runat="server" />
    
    <uc1:myfooter ID="myfooter2" runat="server" />

</asp:Content>
