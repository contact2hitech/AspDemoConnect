<%@ Page Title="Online Users Info" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="OnlineUsers.aspx.vb" Inherits="OnlineUsers"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>THIS IS SAMPLE SITEMAPPATH</h2>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
     
     <asp:DataList ID="DataList2" runat="server" RepeatColumns="13" 
         RepeatDirection="Horizontal" >
        <ItemTemplate>
          <a href='<%# "profilephotos\" & Eval("simage") %>'>  <asp:Image ID="imgonline" runat="server" Height="35px" Width="35px"
                ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' ToolTip='<%# "Roll No: " & " " & Eval("student_id") & "<br> Name: " &  Eval("name") %>' AlternateText='<%#Eval("student_id") %>'/>                  
                </a>
        </ItemTemplate>
        <HeaderTemplate >SAMPLE DATALIST DEMO HELLO ONLINE USER PROFILE</HeaderTemplate>
        <FooterTemplate >FOOTER DATALIST DEMO</FooterTemplate>
           </asp:DataList>
</asp:Content>




