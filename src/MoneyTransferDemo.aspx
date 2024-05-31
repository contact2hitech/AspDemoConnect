<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="MoneyTransferDemo.aspx.vb" Inherits="MoneyTransferDemo" title="Money Transfer Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
       <h3> List of Negative Balance Acc.</h3>
        <p>
      <asp:Label ID="lbldefolters" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" border="1">
    <tr>
      <td colspan="3" align="center"><b>YOUR ACCOUNT DETAILS:</b> </td>
      
    </tr>
    <tr>
      <td>NAME:</td>
      <td>
          <asp:TextBox ID="txtPerAccontName" runat="server" ReadOnly="True" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
      <td >A/C NUMBER:</td>
      <td><asp:TextBox ID="txtPerAccountNum" runat="server" ReadOnly="True"></asp:TextBox></td>
  
    </tr>
    <tr>
      <td >A/C TYPE:</td>
      <td><asp:DropDownList ID="ddlPerAccounttype" runat="server">
              <asp:ListItem>saving</asp:ListItem>
              <asp:ListItem>current</asp:ListItem>
              <asp:ListItem>student</asp:ListItem>
          </asp:DropDownList></td>
    </tr>
    <tr>
      <td >BALANCE:</td>
      <td><asp:TextBox ID="txtPerAccountBal" runat="server" ReadOnly="True"></asp:TextBox></td>
    </tr>
  </table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<table width="100%" border="1">
    <tr>
      <td colspan="3" align="center"><b>TRANSFER TO:</b></td>
    </tr>
   <tr>
      <td>A/C NUMBER:</td>
      <td>&nbsp;<asp:TextBox ID="txttptAccountNo" runat="server"></asp:TextBox>
          <asp:Button ID="btnFetchDetails" runat="server" 
              Text="Fetch Details" />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
              runat="server" ControlToValidate="txttptAccountNo" Display="Dynamic" 
              ErrorMessage="Select Acc. Number"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator2" runat="server" 
              ControlToValidate="txttptAccountNo" Display="Dynamic" 
              ErrorMessage="Incorrect Acc. No." Operator="LessThan" SetFocusOnError="True" 
              Type="Integer" ValueToCompare="1000"></asp:CompareValidator>
                               </td>
  
    </tr>
    <tr>
      <td >NAME:</td>
      <td >
          <asp:TextBox ID="txttptAccountName" runat="server" ReadOnly="True" Width="100%"></asp:TextBox></td>
    </tr>
   
    <tr>
      <td>A/C TYPE:</td>
      <td>&nbsp;<asp:DropDownList ID="ddltptAccountType" runat="server" Height="16px">
              <asp:ListItem>saving</asp:ListItem>
              <asp:ListItem>current</asp:ListItem>
              <asp:ListItem>student</asp:ListItem>
          </asp:DropDownList></td>
     </tr>
    <tr>
      <td>BALANCE TRANSFER:</td>
      <td>&nbsp;<asp:TextBox ID="txttptTransferAmount" runat="server"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
              ControlToCompare="txtPerAccountBal" ControlToValidate="txttptTransferAmount" 
              ErrorMessage="Please Check Amount" Operator="LessThan" Type="Double"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
    <td colspan="2">
    <center>
        <asp:Button ID="btntptPaynow" runat="server" Text="Pay Now"  />
    
    
        <asp:Button ID="btntptCancel" runat="server" Text="Cancel" 
            CausesValidation="False" />
            <asp:Label ID="lblpaymentStatus" runat="server"></asp:Label>
            </center>
    </td>
    </tr>
  </table>
  <h3>Transaction Summary For Your Account:</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" AllowPaging="true" PageSize="10">
        <Columns>
              <asp:TemplateField HeaderText="Sr No" InsertVisible="False" 
                SortExpression="srno">
                
             <ItemTemplate><center>
                        <asp:Label ID="lblSrNo" runat="server" ></asp:Label>
                        </center>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Account No" SortExpression="student_id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("student_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("student_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tr. Type" SortExpression="tr_type">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("tr_type") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("tr_type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date" SortExpression="tr_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("tr_date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("tr_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Time" SortExpression="tr_time">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("tr_time") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("tr_time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Transaction Details" SortExpression="tr_details">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("tr_details") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("tr_details") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount" SortExpression="tr_amt">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("tr_amt") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("tr_amt") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total" SortExpression="tr_total">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("tr_total") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("tr_total") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [transaction_master] WHERE ([student_id] = @student_id) ORDER BY srno DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtPerAccountNum" Name="student_id" 
                PropertyName="Text" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


