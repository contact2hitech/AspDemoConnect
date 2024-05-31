<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ClassmateList.aspx.vb" Inherits="ClassmateList" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        DataKeyField="uid" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Vertical" RepeatColumns="3">
        <FooterStyle BackColor="#CCCCCC" />
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
          
           <%-- uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
            <br />--%>
            Roll No:
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Eval("student_id") %>' />
            <br />
            Name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            EmailID:
            <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
            <br />
            Mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
            <br />
            City:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            <%--User Name:
            <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
            <br />--%>
            Image:
            <asp:Image ID="simageLabel" runat="server" Height="50px" 
                ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' Width="50px" />
            <br />
            Division:
            <asp:Label ID="divLabel" runat="server" Text='<%# Eval("div") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT [uid], [student_id], [name], [emailid], [mobile], [city], [uname], [simage], [div] FROM [reg_details] WHERE ([div] = @div)">
        <SelectParameters>
            <asp:SessionParameter Name="div" SessionField="studiv" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


