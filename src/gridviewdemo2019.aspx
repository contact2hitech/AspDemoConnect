<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="gridviewdemo2019.aspx.vb" Inherits="gridviewdemo2019" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <a href="registration.aspx"> <h2>GO TO DATA ENTRY DEMO PAGE</h2></a>
   <a href="updatedemo2019.aspx"> <h2>GO TO UPDATE DATA PAGE</h2></a>


    <h1>DEMO OF GRIDVIEW WITH CODING</h1>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2" EnableModelValidation="True">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <h1>DEMO OF DATALIST WITH CODING</h1>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="sid" 
        RepeatColumns="3" 
        RepeatDirection="Horizontal" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <ItemStyle ForeColor="#000066" />
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            student_id: 
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Eval("sid") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("sname") %>' />
            <br />
            emailid:
            <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("semail") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("smobile") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("scity") %>' />
            <br />
            div:
            <asp:Label ID="divLabel" runat="server" Text='<%# Eval("scourse") %>' />
            <br />
            iMAGE:
            <asp:Image ID="Image1" runat="server" Height="100px" 
                ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' Width="100px" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <h1>DEMO OF REPEATER WITH CODING</h1>
    <asp:Repeater ID="Repeater1" runat="server" >
    <ItemTemplate>
    <table border="2" style="text-align:center">
    <tr>
    <td>Roll No: </td>
    <td><asp:Label ID="lbl1" runat="server" text='<%# Eval("sid") %>'></asp:Label></td>
    <td>Div: </td>
    <td><asp:Label ID="Label1" runat="server" text='<%# Eval("scourse") %>'></asp:Label></td>
    <td>Image </td>
    <td></td>
    </tr>
   
    <tr>
    <td>Name:</td>
    <td  colspan="3"><asp:Label ID="Label2" runat="server" text='<%# Eval("sname") %>'></asp:Label></td>
    <td rowspan="3"><br /><asp:Image ID="imgpro" runat="server" Height=150 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>'></asp:Image></td>
    </tr>
    <tr>
    <td>city:</td><td><asp:Label ID="Label3" runat="server" text='<%# Eval("scity") %>'></asp:Label></td>
    <td>Mobile:</td><td><asp:Label ID="Label4" runat="server" text='<%# Eval("smobile") %>'></asp:Label></td>
    <td></td>
    </tr>
    <tr>
    <td >Email</td><td colspan="3"><asp:Label ID="Label5" runat="server" text='<%# Eval("semail") %>'></asp:Label></td>
    </tr>
    </table>
    
    
    </ItemTemplate>
<SeparatorTemplate>sample by sutex </SeparatorTemplate>
<HeaderTemplate><center><h1>HELLO ALL DEAR STUDENTS</h1></center> </HeaderTemplate>
    <AlternatingItemTemplate>
        <table border="2" style="text-align:center">
    <tr>
    <td>Roll No: </td>
    <td><asp:Label ID="lbl1" runat="server" text='<%# Eval("sid") %>'></asp:Label></td>
    <td>Div: </td>
    <td><asp:Label ID="Label1" runat="server" text='<%# Eval("scourse") %>'></asp:Label></td>
    <td>Image </td>
    <td></td>
    </tr>
   
    <tr>
    <td>Name:</td>
    <td  colspan="3"><asp:Label ID="Label2" runat="server" text='<%# Eval("sname") %>'></asp:Label></td>
    <td rowspan="3"><br /><asp:Image ID="imgpro" runat="server" Height=150 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>'></asp:Image></td>
    </tr>
    <tr>
    <td>city:</td><td><asp:Label ID="Label3" runat="server" text='<%# Eval("scity") %>'></asp:Label></td>
    <td>Mobile:</td><td><asp:Label ID="Label4" runat="server" text='<%# Eval("smobile") %>'></asp:Label></td>
    <td></td>
    </tr>
    <tr>
    <td >Email</td><td colspan="3"><asp:Label ID="Label5" runat="server" text='<%# Eval("semail") %>'></asp:Label></td>
    </tr>
    </table>

    
    </AlternatingItemTemplate>
    <FooterTemplate>
    BYE BYE FROM REPEATER</FooterTemplate>
    </asp:Repeater>

</asp:Content>






