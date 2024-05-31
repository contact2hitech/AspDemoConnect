<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="AttenGrid.aspx.vb" Inherits="Moderator_AttenGrid" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
    BorderWidth="1px" CellPadding="2" DataKeyNames="attID" 
    DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" PageSize="30">
    <Columns>
        <asp:BoundField DataField="attID" HeaderText="attID" InsertVisible="False" 
            ReadOnly="True" SortExpression="attID" />
        <asp:BoundField DataField="student_id" HeaderText="student_id" 
            SortExpression="student_id" />
        <asp:CheckBoxField DataField="attStatus" HeaderText="attStatus" 
            SortExpression="attStatus" />
        <asp:BoundField DataField="attdate" HeaderText="attdate" 
            SortExpression="attdate" />
        <asp:BoundField DataField="loggedInDate" HeaderText="loggedInDate" 
            SortExpression="loggedInDate" />
        <asp:BoundField DataField="ipaddress" HeaderText="ipaddress" 
            SortExpression="ipaddress" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
        HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:constrsql %>" 
    SelectCommand="SELECT [attID], [student_id], [attStatus], [attdate], [loggedInDate], [ipaddress] FROM [AttendanceMaster1] ORDER BY [attdate] DESC, [student_id]">
</asp:SqlDataSource>
</asp:Content>


