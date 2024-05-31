<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Submission.aspx.vb" Inherits="Submission" title="Assignment Submission Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border ="2" width="100%">
<tr>
 <td colspan="2">
    <center>    <h2>Practical Assignment Submission</h2>
 </center>
 </td>
 
 </tr>   
 <tr>
 <td  colspan="2">
 <asp:Label ID="lblrecentuploads" runat="server"></asp:Label>
    <a name="cppmsubmitted"></a>
 </td>
 </tr>
 <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Select Your File"></asp:Label>
    </td>
    <td><asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label2" runat="server" Text="Select Your Roll No"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td colspan =2>
    <center>
    <asp:Button ID="Button1" runat="server" Text="Upload for CPPM" />
    
    <asp:Button ID="btnUploadVB" runat="server" Text="Upload for VB.NET" />
    <asp:Button ID="btnUploadASP" runat="server" Text="Upload for ASP.NET" />
    <asp:Button ID="btnUploadFYBCA" runat="server" Text="Upload Error ScreenShots" />
        <asp:Button ID="btnMAD" runat="server" Text="Upload for MAD" BackColor="#99CCFF" ForeColor="#660066" />
    </center>
    </td>
    </tr>
    <tr>
    <td colspan=2>
    <center>
        <asp:Label ID="lblSucess" runat="server" ForeColor="Fuchsia"></asp:Label>
    </center>
    </td>
    </tr>
    <tr>
    <td colspan=2>
    <h2> <center> <a href="Downloads/SampleMAD.docx" >Sample Doc for 405-MAD Submission</a></center></h2>
 <h2> <center> <a href="Downloads/Samplevb.docx" >Sample Doc for VB.NET Submission</a></center></h2>
    <a name="vb.net"></a>
    <center>    <h2>..:: Submitted Files ::..</h2>
      
      <%--FOR VB.NET--%>
     
    <asp:DataList ShowHeader="true" RepeatColumns="6" RepeatDirection="Horizontal" Font-Size="Smaller" runat="server" 
            ID="DataList6" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="3px" CellPadding="2" ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" ForeColor="Black" BorderStyle="Ridge">
            <HeaderTemplate>
          <center>.NET Programming SUBMISSION</center>
            </HeaderTemplate>
     <ItemTemplate >
     <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value")   %>' ForeColor="#b82966" ></asp:Label>  
           
     </ItemTemplate>
           <FooterStyle BackColor="Tan" />
              <AlternatingItemStyle BackColor="PaleGoldenrod" />
           <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="Tan" Font-Bold="True" />
        </asp:DataList>
        <br/>
     
        <%--FOR CPPM 104 --%>
      
     <a name="CPPM"></a>
        <asp:DataList RepeatColumns="6" RepeatDirection="Horizontal"  runat="server" 
            ID="DataList5" BackColor="White" 
            BorderColor="White" BorderWidth="2px" CellPadding="3" 
            ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" BorderStyle="Ridge" 
            CellSpacing="1" Font-Size="Smaller">
            <HeaderTemplate>
          <center>  104 - CPPM PRACTICAL SUBMISSION</center>
            </HeaderTemplate>

<ItemStyle BorderWidth="2px" BorderStyle="Groove" BackColor="#DEDFDE" ForeColor="Black"></ItemStyle>
     <ItemTemplate >
    <b> <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value") %>' ForeColor="#b82966" ></asp:Label>  
            
     </ItemTemplate>
           <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
           <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:DataList>
        <br />
    <%--FOR UNIX--%>
     
    <asp:DataList ShowHeader="true" RepeatColumns="6" RepeatDirection="Horizontal" Font-Size="Smaller" runat="server" 
            ID="DataList3" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="3px" CellPadding="2" ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" ForeColor="Black" BorderStyle="Ridge">
            <HeaderTemplate>
          <center>  UNIX SUBMISSION</center>
            </HeaderTemplate>
     <ItemTemplate >
     <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value")   %>' ForeColor="#b82966" ></asp:Label>  
           
     </ItemTemplate>
           <FooterStyle BackColor="Tan" />
              <AlternatingItemStyle BackColor="PaleGoldenrod" />
           <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="Tan" Font-Bold="True" />
        </asp:DataList>
        <br/>
        <%--FOR  ASP.NET--%>
          <asp:DataList ShowHeader="true" RepeatColumns="5" RepeatDirection="Horizontal" Font-Size="Smaller" runat="server" 
            ID="DataList1" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" ForeColor="Black">
            <HeaderTemplate>
          <center>  ASP.NET SUBMISSION</center>
            </HeaderTemplate>
     <ItemTemplate >
    <b> <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value") %>' ForeColor="#b82966" ></asp:Label>  
            
     </ItemTemplate>
     
           <FooterStyle BackColor="Tan" />
              <AlternatingItemStyle BackColor="PaleGoldenrod" />
           <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="Tan" Font-Bold="True" />
           
        </asp:DataList>
        <br />
        
        <%--FOR 405-MAD --%>
        <a name="mad22"></a>
        <asp:DataList RepeatColumns="6" RepeatDirection="Horizontal"  runat="server" 
            ID="DataList2" BackColor="White" 
            BorderColor="White" BorderWidth="2px" CellPadding="3" 
            ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" BorderStyle="Ridge" 
            CellSpacing="1" Font-Size="Smaller">
            <HeaderTemplate>
          <center>  405 - Mobile Application Development</center>
            </HeaderTemplate>

<ItemStyle BorderWidth="2px" BorderStyle="Groove" BackColor="#DEDFDE" ForeColor="Black"></ItemStyle>
     <ItemTemplate >
    <b> <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value") %>' ForeColor="#b82966" ></asp:Label>  
            
     </ItemTemplate>
           <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
           <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:DataList>
        <br />
        <%--FOR OAT --%>
        <a name="oat"></a>
        <asp:DataList RepeatColumns="6" RepeatDirection="Horizontal"  runat="server" 
            ID="DataList7" BackColor="White" 
            BorderColor="White" BorderWidth="2px" CellPadding="3" 
            ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" BorderStyle="Ridge" 
            CellSpacing="1" Font-Size="Smaller">
            <HeaderTemplate>
          <center>  OFFICE AUTOMATION</center>
            </HeaderTemplate>

<ItemStyle BorderWidth="2px" BorderStyle="Groove" BackColor="#DEDFDE" ForeColor="Black"></ItemStyle>
     <ItemTemplate >
    <b> <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value") %>' ForeColor="#b82966" ></asp:Label>  
            
     </ItemTemplate>
           <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
           <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:DataList>
        <br />
        
        <%--FOR OPERATING SYSTEM -1 --%>
           <asp:DataList RepeatColumns="6" RepeatDirection="Horizontal"  runat="server" 
            ID="DataList4" BackColor="White" 
            BorderColor="White" BorderWidth="2px" CellPadding="3" 
            ItemStyle-BorderStyle="Groove" ItemStyle-BorderWidth="2" BorderStyle="Ridge" 
            CellSpacing="1" Font-Size="Smaller">
            <HeaderTemplate>
          <center>  OPERATING SYSTEM -1 SUBMISSION</center>
            </HeaderTemplate>

<ItemStyle BorderWidth="2px" BorderStyle="Groove" BackColor="#DEDFDE" ForeColor="Black"></ItemStyle>
     <ItemTemplate >
    <b> <asp:Label ID="lblsrno" runat="server" Text='<% # Container.ItemIndex +1 %>' ></asp:Label>.
       </b>         
            <asp:Label ID="lblfile" runat="server" Text='<%# Eval("Text") %>' ToolTip='<%# Eval("Value") %>' ForeColor="#b82966" ></asp:Label>  
            
     </ItemTemplate>
           <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
           <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:DataList>
        <br />
    </center>
    </td>
    </tr>
    </table>
</asp:Content>
















