<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="WebServiceDemo.aspx.vb" Inherits="WebServiceDemo" title="Search Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Principal Amount"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Rate of Interest"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="No. of Years"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button4" runat="server" Text="Get Interest" />
    <br />
    <asp:Label ID="lblAns" runat="server"></asp:Label>
    <br />
    <asp:Label ID="testlbl" runat="server"></asp:Label>
    <br />
    <div>
   <center> <h1><b>Google Custom Search Demo</b></h1></center>
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
</asp:Content>


