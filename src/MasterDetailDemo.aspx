<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="MasterDetailDemo.aspx.vb" Inherits="MasterDetailDemo" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [course_master]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyField="sid" DataSourceID="SqlDataSource2" 
        GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            sid:
            <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            sname:
            <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
            <br />
            smobile:
            <asp:Label ID="smobileLabel" runat="server" Text='<%# Eval("smobile") %>' />
            <br />
            semail:
            <asp:Label ID="semailLabel" runat="server" Text='<%# Eval("semail") %>' />
            <br />
            scity:
            <asp:Label ID="scityLabel" runat="server" Text='<%# Eval("scity") %>' />
            <br />
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Eval("simage") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT [sid], [sname], [smobile], [semail], [scity], [simage] FROM [hitlist] WHERE ([scourse] = @scourse)">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="scourse" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


