<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="GridCustomization.aspx.vb" Inherits="GridCustomization" title="Untitled Page"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" PageSize="10" AllowPaging="true"> 
    <Columns>
    <asp:TemplateField HeaderText = "Serial NO">
    <ItemTemplate>
        <asp:Label ID = "lblroll" runat="server" Text='<%#Eval("student_id") %>' ></asp:Label> 
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText = "STUDENT NAME">
    <ItemTemplate>
        <asp:Label ID = "lblroll" runat="server" Text='<%#Eval("name") %>' ></asp:Label> 
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText = "STUDENT CONTACT INFO">
    <ItemTemplate>
        <asp:TextBox ID = "lblroll" runat="server" Text='<%#Bind("simage") %>' ></asp:TextBox>
    </ItemTemplate>
    </asp:TemplateField>
    
    </Columns>
    </asp:GridView>
    
</asp:Content>


