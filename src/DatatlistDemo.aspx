<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="DatatlistDemo.aspx.vb" Inherits="DatatlistDemo" title="DataList and Repeater Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="lblInfo" runat="server"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" Text="Button" />
    <br />
    DATALIST 2 SAMPLE<br />
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" >
        <FooterStyle BackColor="Black" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <ItemTemplate>
            eid:
            <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
            <br />
            ename:
            <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
            <br />
            did:
            <asp:Label ID="didLabel" runat="server" Text='<%# Eval("did") %>' />
            <br />
            salary:
            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
            <br />
            image:
            <asp:Image ID="Image1" runat="server" Height="100px" 
                ImageUrl='<%# "~\profilephotos\" & Eval("image") %>' Width="100px" />
            <br />
            <br />
        </ItemTemplate>
       
        <AlternatingItemStyle  BackColor="Lime" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        
        <ItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <HeaderStyle BackColor="Black" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <SeparatorTemplate ><></SeparatorTemplate>
        <HeaderTemplate >SAMPLE DATALIST DEMOHELLO</HeaderTemplate>
        <FooterTemplate >FOOTER DATALIST DEMO</FooterTemplate>
        <SelectedItemTemplate ></SelectedItemTemplate>
        <SelectedItemStyle BackColor ="Aqua" /> 
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
    <br />
    
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3" >
     <ItemTemplate>
    <center>
    <table style="border:5;border-style:groove">
    <tr>
    <td>
           Eid:
    </td>
    <td>
    <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
    </td>
    </tr>
    <tr>
    <td>
           NAME:
    </td>
    <td>
    <asp:Label ID="lblName" runat="server" Text='<%# Eval("ename") %>' />
    </td>
    </tr>
    <tr>
    <td>
    IMAGE:
    </td>
    <td>
     <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~\profilephotos\" & Eval("image") %>' Width="100px" />
    </td>
    </tr>
    </table>
    </center>
    </ItemTemplate>
     <AlternatingItemTemplate>
     <center>
        <table style="border:5;border-style:groove">
    <tr>
    <td>
           Eid:
            
    </td>
    <td>
    <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
    </td>
    </tr>
    <tr>
    <td>
           NAME:
    </td>
    <td>
    <asp:Label ID="lblName" runat="server" Text='<%# Eval("ename") %>' />
    </td>
    </tr>
    </table>
    </center>
    </AlternatingItemTemplate>
   <SeparatorTemplate> <center><table style="border-style:solid;background-color:Lime"><tr><td> ---+--+--+---+----</td> </tr> </table> </center></SeparatorTemplate>
    <HeaderTemplate><center><table style="border-style:solid;background-color:Lime"><tr><td>  HELLO FROM REPEATER</td> </tr> </table> </center></HeaderTemplate>
    <FooterTemplate><center><table style="border-style:solid;background-color:Lime"><tr><td> FROM REPEATER </td> </tr> </table> </center></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
    <br />
    <br />
    </asp:Content>

