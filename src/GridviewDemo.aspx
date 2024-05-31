<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="GridviewDemo.aspx.vb" Inherits="GridviewDemo" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       
            
        	<h2>Welcome to My Site&nbsp;
                <asp:Label ID="lblinfo" runat="server"></asp:Label>
            </h2>
            <h3>
                <asp:Label ID="Label1" runat="server" Text="PLEASE ENTER DATA HERE"></asp:Label>
                <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                <asp:Button ID="btnShow" runat="server" Text="Show" />
            </h3>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                    DataKeyNames="eid" DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" 
                            SortExpression="eid" />
                        <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                        <asp:BoundField DataField="did" HeaderText="did" 
                            SortExpression="did" />
                        <asp:BoundField DataField="salary" HeaderText="salary" 
                            SortExpression="salary" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constrsql %>" 
                    SelectCommand="SELECT * FROM [employee]" 
                    OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>
            </p>
            
                <h1>DEMO FOR RECORD FROM MYSQL</h1>
    <asp:GridView ID="GridView2" runat="server" 
                EnableModelValidation="True">
    </asp:GridView>
   
        

</asp:Content>
