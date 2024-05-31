<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ErrorLog.aspx.vb" Inherits="ErrorLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="err_id" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" 
        GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="err_id" HeaderText="Error ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="err_id" />
                <asp:BoundField DataField="err_date" HeaderText="Date" 
                SortExpression="err_date" />
                <asp:BoundField DataField="err_time" HeaderText="Time" 
                SortExpression="err_time" />
                <asp:BoundField DataField="err_user" HeaderText="User Name" 
                SortExpression="err_user" />
                <asp:BoundField DataField="err_userid" HeaderText="Roll No" 
                SortExpression="err_userid" />
                <asp:BoundField DataField="err_source" HeaderText="Error Page Details" 
                SortExpression="err_source" />
            <asp:BoundField DataField="err_code" HeaderText="Error Code" 
                SortExpression="err_code" />
            <asp:BoundField DataField="err_message" HeaderText="Error Message" 
                SortExpression="err_message" />
            <asp:BoundField DataField="err_details" HeaderText="Error in Details" SortExpression="err_details" />
           </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT [err_id],[err_date],[err_time],[err_user],[err_userid],[err_code],[err_source],[err_message],[err_details] FROM [err_data] ORDER BY [err_id] DESC">
    </asp:SqlDataSource>
</asp:Content>


