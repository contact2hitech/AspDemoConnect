<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Theme1.aspx.vb" Inherits="Theme1" MasterPageFile="~/MainMaster.master" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div>
    
        
        <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="True">
        <asp:ListItem Selected="True">Jan</asp:ListItem>
        <asp:ListItem>Dec</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lblCal1" runat="server" Text="SAMPLE CALENDER 1"></asp:Label>
    <asp:Calendar ID="Calendar12" runat="server" ></asp:Calendar>
    <br />
    <h1>HELLO</h1>
    <h2>HOW</h2>
    <h3>ARE</h3>
    <h4>YOU</h4>
    
    <asp:Label ID="lblcal2" runat="server" Text="SAMPLE CALENDER 2"></asp:Label>
    <asp:Calendar ID="cal2" runat="server" />
    
    
    <asp:Button ID="Button6" runat="server" Text="Button" />
    <asp:Button ID="Button7" runat="server" Text="Button" />
    <asp:Button ID="Button8" runat="server" Text="Button" />
    
    
    <asp:Button ID="Button3"  runat="server" Text="Button"  />
    <asp:Button ID="Button5" runat="server" Text="Button" />
    <asp:Button ID="Button4" runat="server" Text="Button" />
    </div>

        

</asp:Content>



