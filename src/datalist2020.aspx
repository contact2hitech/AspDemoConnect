<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="datalist2020.aspx.vb" Inherits="datalist2020" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>This is Demo of Datalist</h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
        DataSourceID="SqlDataSource1" ForeColor="Black">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            student_id:
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Eval("student_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Eval("simage") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT [student_id], [name], [simage] FROM [reg_details]">
    </asp:SqlDataSource>


     <h1>This is Demo of Repeater</h1>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
    <ItemTemplate>
   <table border=2>
   <tr>
  <td>
      <asp:Label ID="Label2" runat="server" Text="Student Roll No"></asp:Label> </td>
   <td>
     
       <asp:Label ID="Label1" runat="server" Text='<%# Eval("student_id") %>'></asp:Label> </td>
   </tr>
   </table> 
    
    </ItemTemplate>
    <AlternatingItemTemplate></AlternatingItemTemplate>
    <HeaderTemplate></HeaderTemplate>
    <FooterTemplate></FooterTemplate>
    <SeparatorTemplate>
    <a href="https://amrolisficolleges.blogspot.com/?m=1">Admission Information</a>
    </SeparatorTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT [student_id], [name], [simage] FROM [reg_details]">
    </asp:SqlDataSource>

    <h2>THISS IS CODING DEMO</h2>
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
    Roll No : <asp:Label ID="lblroll" runat="server" Text='<%# Eval("student_id") %>'></asp:Label>
    Student Name : <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
    
    </ItemTemplate>
    
    </asp:DataList>
    <asp:Repeater ID="Repeater2" runat="server">
    
    <ItemTemplate>
    <table>
    <tr>
    <td>
    Roll No : <asp:Label ID="lblroll" runat="server" Text='<%# Eval("student_id") %>'></asp:Label>
    
    </td>
    <td>
    Student Name : <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
    
    </td>
    <td>
 <asp:Image ID="Image2" runat="server" Height=100 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' />
    
    </td>
 

    </tr>


    </table>
    </ItemTemplate>
    
    </asp:Repeater>
</asp:Content>


