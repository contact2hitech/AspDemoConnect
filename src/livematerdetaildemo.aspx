<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="livematerdetaildemo.aspx.vb" Inherits="livematerdetaildemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="dname" DataValueField="did">
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tybcadiv2020 %>" 
        SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="sid" DataSourceID="SqlDataSource2" 
        EnableModelValidation="True" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" 
                SortExpression="sid" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="smobile" HeaderText="smobile" 
                SortExpression="smobile" />
            <asp:BoundField DataField="simage" HeaderText="simage" 
                SortExpression="simage" />
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tybcadiv2020 %>" 
        SelectCommand="SELECT * FROM [studinfo] WHERE ([cid] = @cid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="cid" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>


