<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="MaterDetailDemowithSession.aspx.vb" Inherits="MaterDetailDemowithSession" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>THIS ISDEMO OF MASTERDETAIL USING SESSION</h1>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [course_master]"></asp:SqlDataSource>

        <h1>YOUR RECORDS USING SESSION</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="sid" 
        DataSourceID="SqlDataSource2" EnableModelValidation="True" GridLines="None">
        <Columns>
            <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" 
                ReadOnly="True" SortExpression="sid" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="smobile" HeaderText="smobile" 
                SortExpression="smobile" />
            <asp:BoundField DataField="semail" HeaderText="semail" 
                SortExpression="semail" />
            <asp:BoundField DataField="scourse" HeaderText="scourse" 
                SortExpression="scourse" />
            <asp:BoundField DataField="scity" HeaderText="scity" SortExpression="scity" />
            <asp:BoundField DataField="spassword" HeaderText="spassword" 
                SortExpression="spassword" />
            <asp:BoundField DataField="simage" HeaderText="simage" 
                SortExpression="simage" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [hitlist] WHERE ([scourse] = @scourse)">
        <SelectParameters>
            <asp:SessionParameter Name="scourse" SessionField="c2019" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


