<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="CommandBuilder.aspx.vb" Inherits="CommandBuilder" title="CommandBuilder Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="2" ForeColor="Black"  
        OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowEditing = "GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound"
        GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px">
        <Columns>
        <asp:TemplateField HeaderText="ID">
           <ItemTemplate >
               <asp:Label ID="lblID" runat="server" Text='<%# Eval("eid") %>' >
		</asp:Label>
           </ItemTemplate>
           </asp:TemplateField>     
           <asp:TemplateField HeaderText="Name">
           <ItemTemplate >
              <asp:Label ID="lblName" runat="server" Text='<%# Eval("ename") %>' >
		</asp:Label>
           </ItemTemplate>
           <EditItemTemplate >
               <asp:TextBox ID="txtEname" runat="server" Text='<%# Eval("ename")%>'  ></asp:TextBox>
           </EditItemTemplate>
               </asp:TemplateField>
           <asp:TemplateField HeaderText="Dept ID">
           <ItemTemplate >
              <asp:Label ID="lbldid" runat="server" Text='<%# Eval("did") %>' >
		</asp:Label>
           </ItemTemplate>
           <EditItemTemplate >
               <asp:DropDownList ID="ddlDept" runat="server" >
               <asp:ListItem Text =TEST Value= "TEST"></asp:ListItem>
                </asp:DropDownList>
           </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Salary">
           <ItemTemplate >
              <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("salary") %>' >
		</asp:Label>
           </ItemTemplate>
           <EditItemTemplate >
               <asp:TextBox ID="txtSalary" runat="server" Text='<%# Eval("salary")%>'  ></asp:TextBox>
           </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image">
           <ItemTemplate >
              <asp:Label ID="lblImage" runat="server" Text='<%# Eval("image") %>' >
		</asp:Label>
           </ItemTemplate>
           <EditItemTemplate >
               <asp:TextBox ID="txtImage" runat="server" Text='<%# Eval("image")%>'  ></asp:TextBox>
           </EditItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Edit" ShowHeader="false">
               <ItemTemplate>
                   <asp:LinkButton ID="btnedit" runat="server" 
			CommandName="Edit" Text="Edit" ></asp:LinkButton>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:LinkButton ID="btnupdate" runat="server" 
			CommandName="Update" Text="Update" ></asp:LinkButton>
                   <asp:LinkButton ID="btncancel" runat="server" 
			CommandName="Cancel" Text="Cancel"></asp:LinkButton>
               </EditItemTemplate>
            </asp:TemplateField>
       
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCCCFF" 
    Font-Bold="False" Font-Size="Small" ForeColor="#FF0066"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Command Builder" />
    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>

    <h1>THIS IS DEMO OF STATIC COMMAND BUILDER</h1>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="eid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" 
                SortExpression="eid" />
            <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
            <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
            <asp:BoundField DataField="salary" HeaderText="salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        DeleteCommand="DELETE FROM [employee] WHERE [eid] = @original_eid AND (([ename] = @original_ename) OR ([ename] IS NULL AND @original_ename IS NULL)) AND (([did] = @original_did) OR ([did] IS NULL AND @original_did IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))" 
        InsertCommand="INSERT INTO [employee] ([eid], [ename], [did], [salary], [image]) VALUES (@eid, @ename, @did, @salary, @image)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [employee]" 
        UpdateCommand="UPDATE [employee] SET [ename] = @ename, [did] = @did, [salary] = @salary, [image] = @image WHERE [eid] = @original_eid AND (([ename] = @original_ename) OR ([ename] IS NULL AND @original_ename IS NULL)) AND (([did] = @original_did) OR ([did] IS NULL AND @original_did IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_eid" Type="Decimal" />
            <asp:Parameter Name="original_ename" Type="String" />
            <asp:Parameter Name="original_did" Type="Decimal" />
            <asp:Parameter Name="original_salary" Type="Decimal" />
            <asp:Parameter Name="original_image" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eid" Type="Decimal" />
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="did" Type="Decimal" />
            <asp:Parameter Name="salary" Type="Decimal" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="did" Type="Decimal" />
            <asp:Parameter Name="salary" Type="Decimal" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="original_eid" Type="Decimal" />
            <asp:Parameter Name="original_ename" Type="String" />
            <asp:Parameter Name="original_did" Type="Decimal" />
            <asp:Parameter Name="original_salary" Type="Decimal" />
            <asp:Parameter Name="original_image" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


