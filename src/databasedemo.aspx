<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="databasedemo.aspx.vb" Inherits="databasedemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="stud_id" HeaderText="stud_id" 
                SortExpression="stud_id" />
            <asp:BoundField DataField="stud_name" HeaderText="stud_name" 
                SortExpression="stud_name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2018 %>" 
        SelectCommand="SELECT * FROM [hitlist]"></asp:SqlDataSource>
</asp:Content>


