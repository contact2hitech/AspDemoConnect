<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="adoDemowithcoding.aspx.vb" Inherits="adoDemowithcoding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h4>WITH CODING</h4>
<h1>THIS IS GRIDVIEW NO 1 CONTAINING NAMES OF FAVOURITE STUDENTS </h1>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />

<h1>THIS IS DATALIST NO 1 CONTAINING NAMES OF FAVOURITE STUDENTS </h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical" ForeColor="Black">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />

        <ItemTemplate>
        STUDENT ID: <asp:Label ID="lblsid" runat="server" Text='<%# Eval("sid") %>'></asp:Label><br />
        STUDENT NAME: <asp:Label ID="Label1" runat="server" Text='<%# Eval("sname") %>'></asp:Label><br />
        STUDENT MOBILE: <asp:Label ID="Label2" runat="server" Text='<%# Eval("smobile") %>'></asp:Label><br />
        STUDENT EMAIL: <asp:Label ID="Label3" runat="server" Text='<%# Eval("semail") %>'></asp:Label><br />
        STUDENT COURSE: <asp:Label ID="Label4" runat="server" Text='<%# Eval("scourse") %>'></asp:Label><br />
        STUDENT CITY: <asp:Label ID="Label5" runat="server" Text='<%# Eval("scity") %>'></asp:Label>

        </ItemTemplate>
        
        

    </asp:DataList>
    <br />
    <h1>THIS IS REPEATER NO 1 CONTAINING NAMES OF FAVOURITE STUDENTS </h1>
    <asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<table border="2">
<tr>
    <td>
        STUDENT ID: <asp:Label ID="lblsid" runat="server" Text='<%# Eval("sid") %>'></asp:Label><br />
        STUDENT NAME: <asp:Label ID="Label1" runat="server" Text='<%# Eval("sname") %>'></asp:Label><br />
        STUDENT MOBILE: <asp:Label ID="Label2" runat="server" Text='<%# Eval("smobile") %>'></asp:Label><br />
        STUDENT EMAIL: <asp:Label ID="Label3" runat="server" Text='<%# Eval("semail") %>'></asp:Label><br />
        STUDENT COURSE: <asp:Label ID="Label4" runat="server" Text='<%# Eval("scourse") %>'></asp:Label><br />
        STUDENT CITY: <asp:Label ID="Label5" runat="server" Text='<%# Eval("scity") %>'></asp:Label>
   </td>
    </tr>    </table>
        </ItemTemplate>


    </asp:Repeater>
    <br />

    </asp:Content>


