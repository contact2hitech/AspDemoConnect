<%@ Page Title="DATALIST with MySQL" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="DatalistwithMySQL.aspx.vb" Inherits="DatalistwithMySQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
        Student First Name:
            <asp:Label ID="lblname" runat="server" Text='<%# Eval("firstname") %>' />
            <br>
            Middle Name:
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("middlename") %>' />
            <br>
            Last Name:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("lastname") %>' />
            <br>

        Student Image:
            <asp:Image ID="Image1" runat="server" Height="100px" 
                ImageUrl='<%# "~\image\" & Eval("city") %>' Width="100px" />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>


