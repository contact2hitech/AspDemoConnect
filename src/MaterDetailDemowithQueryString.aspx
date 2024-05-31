<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="MaterDetailDemowithQueryString.aspx.vb" Inherits="MaterDetailDemowithQueryString" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>THIS ISDEMO OF MASTERDETAIL USING QUERY STRING</h1>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [course_master]"></asp:SqlDataSource>

        <h2>RECORDS OF SELECTED COURSE IN GRIDVIEW</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="sid" DataSourceID="SqlDataSource2" 
        EnableModelValidation="True" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
        <EmptyDataTemplate>
            NO ADMISSION IN SELECTED COURSE
        </EmptyDataTemplate>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [hitlist] WHERE ([scourse] = @scourse)">
        <SelectParameters>
            <asp:QueryStringParameter Name="scourse" QueryStringField="courseid" 
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


