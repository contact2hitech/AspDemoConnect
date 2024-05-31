<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DataBindingDemo.aspx.vb" Inherits="DataBindingDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DATABINDING DEMO Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="PLEASE ENTER SOMETHING\"></asp:Label>
    
        <asp:Label ID="Label1" runat="server" Text="<%#tydiv3 %>" ></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="<%#tydiv3 %>" />
        <br />
        <asp:Label ID="lblAnswer" runat="server" Text="<%#tydiv3 %>"></asp:Label>
    
        <asp:RadioButton ID="RadioButton1" runat="server" Text = "<%#myownfunction %>" />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataKeyNames="sid" EnableModelValidation="True">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" 
                ReadOnly="True" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="smobile" HeaderText="smobile" 
                SortExpression="smobile" />
            <asp:BoundField DataField="simage" HeaderText="simage" 
                SortExpression="simage" />
        </Columns>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [studinfo]"></asp:SqlDataSource>
    <br />
    <h1>THIS IS LITERAL BINDING DEMO</h1>
    <asp:Literal ID="Literal1" runat="server" Text="<%$ AppSettings: special2 %>"></asp:Literal>

    <h2>REPEATED DATA BINDING DEMO</h2>
    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>

    </form>
</body>
</html>
