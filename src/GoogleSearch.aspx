<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GoogleSearch.aspx.vb" Inherits="GoogleSearch" MasterPageFile="~/MainMaster.master" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
      <br />
   This is for Google Custom Search if you have Working Internet Connection.
   <div>
    <script>
        (function () {
            var cx = '009367970126371910386:07-9vggevf0';
            var gcse = document.createElement('script');
            gcse.type = 'text/javascript';
            gcse.async = true;
            gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(gcse, s);
        })();
</script>
<gcse:search></gcse:search>
    </div>
    <h2 style="font-family: 'Monotype Corsiva'; font-size: x-large; color: #FF00FF; font-weight: bold; background-color: #CC99FF; border-style: groove; border-width: thin">Simple Greeting Web Service Demo</h2>
    <asp:Button ID="Button1" runat="server" Text="Hello...!!!" />
   <asp:Label ID="Label1" runat="server" BackColor="Cyan" ForeColor="Magenta" Font-Bold="true" Font-Size="Larger" Text=""></asp:Label>
    <asp:Panel ID="Panel1" runat="server">
     <h1 style="font-family: 'Monotype Corsiva'; font-size: x-large; color: #FF00FF; font-weight: bold; background-color: #CC99FF; border-style: groove; border-width: thin">This is Search Demo for Students of TYBCA Using Web Service from X73</h1><br />
        PLEASE ENTER THE NAME :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Search" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            EnableModelValidation="True" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </asp:Panel>
    <h1 style="font-family: 'Monotype Corsiva'; font-size: x-large; color: #FF00FF; font-weight: bold; background-color: #CC99FF; border-style: groove; border-width: thin" >Hello from Webservice of TYBCA Greetings...!!!</h1>
   Please Enter your Name :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Greetings" />
    <br />
    <asp:Label ID="Label2" runat="server" BackColor="#D2CE9B" Font-Bold="True" 
          Font-Italic="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#660033"></asp:Label>
</asp:Content>





