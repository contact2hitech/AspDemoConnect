<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" MasterPageFile="~/MainMaster.master" Title="HOME PAGE"   %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       
        <div>
    
     <h1>  SAMPLE DETAILS</h1> 
     <br />
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:Button ID="Button2" runat="server" Text="SHOW" />
        
        

</asp:Content>
