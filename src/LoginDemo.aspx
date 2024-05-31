<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="LoginDemo.aspx.vb" Inherits="LoginDemo" title="LOGIN Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel runat="server" DefaultButton="btnlogin">
    <table>
    <tr >
        <td colspan = "2" align ="left">
        
        PLEASE ENTER YOUR CREDENTIALS HERE
        </td>
        <td ></td>
        <td></td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="USER NAME :"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtUname" runat="server" Height="22px" Width="160px" TabIndex="0"
                CssClass="invertbg"></asp:TextBox>
        </td>
        <td rowspan="2" ><asp:Label runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Names="Lucida Calligraphy" Font-Size="Large">OR</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td rowspan=2>        
            <asp:ImageButton ID="lnkbtnSignUp" runat="server" 
            PostBackUrl="~/RegistrationDemo.aspx" 
            ImageUrl="~/images/NewUserRegistration.jpg" TabIndex="1"></asp:ImageButton> </td>
    </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="PASSWORD :"></asp:Label>
    </td>
    <td><asp:TextBox ID="txtUpass" runat="server" TextMode="Password" Height="22px" 
            Width="160px" TabIndex="0" CssClass="invertbg"></asp:TextBox>
    </td>
    <td ></td>
    </tr>
    <tr>
    <td>
    </td>
    <td>
    <asp:CheckBox runat="server" ID="chkRemember" Text="Remember for 7 Days...!" 
            TabIndex="0" />
    </td>
    <td></td>
    <td >  
     <b>   <asp:LinkButton runat="server" ID="lnkbtnforget" 
            PostBackUrl="~/forgetPassword.aspx" >Forget Password ?</asp:LinkButton></b>
    </td>
    <tr>
    <td>
    </td>
    <td>
    <asp:Button ID="btnlogin" runat="server" Text="Login" Height="23px" Width="81px" 
            TabIndex="0" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="23px" Width="81px" 
            TabIndex="0" UseSubmitBehavior="False" />
    
           
    </td>
    <td></td>
    <td ></td>
    </tr>
    <tr>
    <td></td>
    <td>
    <asp:Label ID="lblmystatus" runat="server" ForeColor="Red">
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </asp:Label>
        </td>
    <td>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            EnableModelValidation="True" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EmptyDataTemplate>
                USER IS NOT REGISTERED
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        </td>
    <td ></td>
    </tr>  
    </table>
    </asp:Panel>
    </asp:Content>

