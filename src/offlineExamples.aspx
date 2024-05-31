<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="offlineExamples.aspx.vb" Inherits="offlineExamples" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h1>Pending Examples List</h1></center> 
    <asp:DataList ID="DataList1" runat="server" Width="100%" >
       
           <ItemTemplate>
           <table border="0" width="100%">
           <tr>
           <td width="10%"> <asp:Label ID="lblsrno" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "srno")%>'></asp:Label></td>
           <td><a href='<%# DataBinder.Eval(Container.DataItem, "ExampleFile")%>'>  <asp:Label ID="lblpage" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ExampleFile")%>'></asp:Label>  </a></td>
           <td width="10%"><asp:CheckBox ID="CheckBox1" runat="server" Checked=<%#DataBinder.Eval(Container.DataItem,"IsActive")%> /></td>
           </tr>
           </table>       
                  
           </ItemTemplate>
           <ItemStyle BorderWidth=1 />
       </asp:DataList>
       <h1>SAVE CHANGES</h1>
    <asp:Button ID="btnUpdate" runat="server" Text="Update Changes" />
<asp:Label ID="lblout" runat="server" Text="Label"></asp:Label>
</asp:Content>


