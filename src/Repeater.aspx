<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Repeater.aspx.vb" Inherits="Repeater" title="Repeater Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
        <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate >
                       <asp:Table runat="server" BorderStyle="Groove" BorderWidth=2>                    
                       <asp:TableRow>
                       <asp:TableCell>
                <a href='<%# "profilephotos\" &  Eval("simage") %>'>
                <asp:Image ID="Image1" runat="server" Height="100px" 
                    ImageUrl='<%# "~\profilephotos\" &  Eval("simage") %>' Width="100px" >
                </asp:Image>
                    </a>                
                    
                </asp:TableCell>
                       <asp:TableCell>
                       STUDENT ROLL NO
                       </asp:TableCell>
                       <asp:TableCell>
                       <asp:Label ID="lbltest" runat="server" Text='<%# Eval("student_id") %>' ></asp:Label>
                       </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                       <asp:TableCell>
                       STUDENT NAME
                       </asp:TableCell>
                       <asp:TableCell>
                       <asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>' ></asp:Label>
                       </asp:TableCell>
                       </asp:TableRow>
                       </asp:Table>
                                                                   
        </ItemTemplate>
        
        <HeaderTemplate ><h1> DEMO USING REPEATER</h1></HeaderTemplate>
        <FooterTemplate>GREETINGS</FooterTemplate>
        
</asp:Repeater>    
  
        DATALIST DEMO
    
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2"  GridLines="Both" 
            RepeatColumns="2" RepeatDirection="Horizontal">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <AlternatingItemStyle BackColor="Aqua" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SeparatorTemplate>
                @
            </SeparatorTemplate>
            <HeaderTemplate>
                STUDENT DATA USING DATALIST CONTROL
            </HeaderTemplate>
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <FooterTemplate>
                @sutexbca
            </FooterTemplate>
            <ItemTemplate>
                <asp:Table runat="server"> 
                <asp:TableRow>
                <asp:TableCell>
                student_id:
                </asp:TableCell>
                <asp:TableCell>
                
                <asp:Label ID="student_idLabel" runat="server" 
                    Text='<%# Eval("student_id") %>' />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                
                name:
                </asp:TableCell><asp:TableCell>
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                <br />
                emailid:
                </asp:TableCell><asp:TableCell>
                <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
                <br />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                simage:
                </asp:TableCell><asp:TableCell>
                <a href='<%# "profilephotos\" &  Eval("simage") %>'>
                <asp:Image ID="Image1" runat="server" Height="100px" 
                    ImageUrl='<%# "~\profilephotos\" &  Eval("simage") %>' Width="100px" >
                </asp:Image>
                    </a>                
                    
                </asp:TableCell></asp:TableRow></asp:Table></ItemTemplate><EditItemTemplate>
            <asp:Button  runat="server" ID="testbutton"/>
            </EditItemTemplate>
        </asp:DataList>
        
</asp:Content>


