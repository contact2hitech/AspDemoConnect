<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="TemplateDownload.aspx.vb" Inherits="Default5" title="Downloads Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:Label ID="Label1" CssClass ="mylabel" runat="server" Text="Label"></asp:Label>
 <h2>This Page is for Templates, Database,Images Download.
  </h2>
     <table>
  <tr>
  <td>  <asp:Label CssClass="mytxt" ID="lbl1" runat="server"></asp:Label>
        <asp:Label CssClass="mytxt" ID="lbl2" runat="server"></asp:Label>
              <br />
      <br />
       <a name="imagesdown"></a>
      <%--image showing data for 201920--%>
      <%-- <header>    <h2>Download your Images:</h2>
         <span>  <a href="TemplateDownload.aspx#toppage">
            <img src="images/toppage.png" alt="Go to TOP !"  width="32" height="32" border="0">
            TOP</a></span>
</header>--%>
          
          
            <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                RepeatColumns="5" DataKeyField="Text" DataMember="Value" >
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
           <ItemTemplate>
          <a href='<%# "Downloads\" & DataBinder.Eval(Container.DataItem, "Text") %>' >
          <asp:Image ID="myimg" runat="server" Height="100px" Width="100px" ImageUrl='<%# "~\Downloads\" & DataBinder.Eval(Container.DataItem, "Text") %>' ToolTip='<%#DataBinder.Eval(Container.DataItem, "Text") %>' AlternateText='<%# DataBinder.Eval(Container.DataItem, "Text") %>' />
          </a> 
           </ItemTemplate>
            </asp:DataList>
        <div class="WordWrap">
     <%--Add your gridview here--%>
           
      <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" 
            BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
            EnableModelValidation="True" GridLines="None" AutoGenerateColumns="false"  >
            <Columns>
        <asp:BoundField DataField="Text" HeaderText="Image Name" >
        <ItemStyle Width="35" />
        <HeaderStyle Width="100px" />
        </asp:BoundField >
                <asp:ImageField HeaderText="Image" DataImageUrlField="Value" ItemStyle-HorizontalAlign="Center" ControlStyle-Height="100" ControlStyle-Width="100" >
        <ItemStyle Width=""  />
        <HeaderStyle Width="100px" />
                
                </asp:ImageField>
    </Columns>
          <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
          <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      </asp:GridView>          
</div>
    <asp:Label ID="lblother" runat="server"></asp:Label>
        
        	<div class="cleaner"></div>
           
  </td>
  </tr>
  </table>
  
</asp:Content>




