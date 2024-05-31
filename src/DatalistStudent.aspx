<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="DatalistStudent.aspx.vb" Inherits="DatalistStudent" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>data list control demo</h1>
    <asp:DataList    ID ="mydatalist" runat="server" DataKeyField="uid" DataSourceID="SqlDataSource1" 
                           RepeatColumns="2" BackColor="#DEBA84" 
                           BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" 
                           CellSpacing="2" GridLines="Both" SelectedIndex="-1">

                           <HeaderTemplate>DEMO OF DATALIST 2017 STUDENTS LISTED AS PRODUCTS</HeaderTemplate>
                           <FooterTemplate>
                               GOOD LUCK
                           </FooterTemplate>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <AlternatingItemStyle BackColor="Aqua" />
        
         
        <ItemTemplate>
            uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
            <br />
            student_id:
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Eval("student_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            emailid:
            <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            simage:
           <%-- <asp:Label ID="simageLabel" runat="server" Text='<%# Eval("simage") %>' />--%>
            <a href='<%# "profilephotos\" &  Eval("simage") %>'>
            <asp:Image ID="Image1" runat="server" Height="100px" 
                ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' Width="100px" />
                </a>
            <br />
            div:
            <asp:Label ID="divLabel" runat="server" Text='<%# Eval("div") %>' />
            <br />
            <br />
        </ItemTemplate>
                       <ItemStyle BackColor="PaleGreen" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="DarkOrange" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                       </asp:DataList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:constrsql %>" 
                           SelectCommand="SELECT [uid], [student_id], [name], [emailid], [mobile], [city], [simage], [div] FROM [reg_details]">
                       </asp:SqlDataSource>
       <h1>Repeater Control Demo 201920</h1>
       <asp:Repeater ID="myrepaetor" runat="server" DataSourceID="SqlDataSource1">
     <ItemTemplate>
     <table border="2">
     <tr>
     <td>Roll.No</td>
     <td><asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("student_id") %>' /></td>
     <td>Div</td>
     <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("div") %>' /></td>
     <td>Image</td>
     </tr>
     <tr>
     <td>Name</td>
     <td colspan="2"><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>' /></td>
     <td rowspan="4" colspan="2"><a href='<%# "profilephotos\" &  Eval("simage") %>'>
      <asp:Image ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' ID="img1" alt="error" runat="server" height="100" width="100" /> 
      </a>
      </td>

     </tr>
     <tr>
     <td>Email ID</td>
     <td colspan="2"><asp:Label ID="Label4" runat="server" Text='<%# Eval("emailid") %>' /></td>
     
     </tr>
    
     <tr>
     <td>Mobile</td>
     <td><asp:Label ID="Label6" runat="server" Text='<%# Eval("mobile") %>' /></td>
     <td>City:
    <asp:Label ID="Label7" runat="server" Text='<%# Eval("city") %>' /></td>
     </tr>
     </table>
     </ItemTemplate>
       </asp:Repeater>
    <br />
    <br />
    <br />
    <h1>MY REPEATER</h1>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
    <ItemTemplate>
    <table width=500px border="5">
    <tr>
    
    <td style=width:30%><center> NAME:</center> <center> <asp:Label id="lblName" runat="server" Text='<%# Eval("sname") %>'></asp:Label></center> </td>
    <td><center> IMAGE:</center><center><a href='<%# "..\image\" & Eval("simage") %>'> <asp:Image ImageUrl='<%# "~\image\" & Eval("simage") %>' runat="server" ID="myimage" AlternateText="test"  /></a></center></td>
    </tr>
    <tr>
    
    <td style=width:30%><center> EMAIL ID:</center> <center> <asp:Label id="Label3" runat="server" Text='<%# Eval("smobile") %>'></asp:Label></center> </td>
    <td ><center> STUD ID:</center> <center> <asp:Label id="Label5" runat="server" Text='<%# Eval("sid") %>'></asp:Label></center> </td>
    </tr>
    <tr>
    
   
    </table>

    
    
    </ItemTemplate>
    </asp:Repeater>
    <h1>MY DATALIST</h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        DataKeyField="sid" DataSourceID="SqlDataSource2" ForeColor="Black" 
        GridLines="Vertical" RepeatDirection="Horizontal">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            sid:
            <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            sname:
            <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
            <br />
            smobile:
            <asp:Label ID="smobileLabel" runat="server" Text='<%# Eval("smobile") %>' />
            <br />
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Eval("simage") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [studinfo]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>


