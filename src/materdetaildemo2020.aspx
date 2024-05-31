<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="materdetaildemo2020.aspx.vb" Inherits="materdetaildemo2020" %>

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
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="sid" DataSourceID="SqlDataSource2" 
        EnableModelValidation="True">
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
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
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


