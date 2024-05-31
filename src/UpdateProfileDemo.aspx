<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="UpdateProfileDemo.aspx.vb" Inherits="UpdateProfileDemo" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataSourceID="SqlDataSource1" Height="50px" Width="125px" 
        AllowPaging="True" AutoGenerateRows="False" DataKeyNames="uid">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
                SortExpression="uid" />
            <asp:BoundField DataField="student_id" HeaderText="student_id" 
                SortExpression="student_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" 
                SortExpression="emailid" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
            <asp:BoundField DataField="simage" HeaderText="simage" 
                SortExpression="simage" />
            <asp:BoundField DataField="div" HeaderText="div" SortExpression="div" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="div" DataValueField="div" 
        AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT DISTINCT [div] FROM [reg_details]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        DeleteCommand="DELETE FROM [reg_details] WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL))" 
        InsertCommand="INSERT INTO [reg_details] ([uid], [student_id], [name], [emailid], [mobile], [city], [uname], [simage], [div]) VALUES (@uid, @student_id, @name, @emailid, @mobile, @city, @uname, @simage, @div)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [uid], [student_id], [name], [emailid], [mobile], [city], [uname], [simage], [div] FROM [reg_details] WHERE ([student_id] = @student_id)" 
        UpdateCommand="UPDATE [reg_details] SET [student_id] = @student_id, [name] = @name, [emailid] = @emailid, [mobile] = @mobile, [city] = @city, [uname] = @uname, [simage] = @simage, [div] = @div WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL))">
        <SelectParameters>
            <asp:SessionParameter Name="student_id" SessionField="studid" Type="Decimal" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_uid" Type="Decimal" />
            <asp:Parameter Name="original_student_id" Type="Decimal" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_emailid" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_uname" Type="String" />
            <asp:Parameter Name="original_simage" Type="String" />
            <asp:Parameter Name="original_div" Type="Decimal" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="student_id" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="simage" Type="String" />
            <asp:Parameter Name="div" Type="Decimal" />
            <asp:Parameter Name="original_uid" Type="Decimal" />
            <asp:Parameter Name="original_student_id" Type="Decimal" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_emailid" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_uname" Type="String" />
            <asp:Parameter Name="original_simage" Type="String" />
            <asp:Parameter Name="original_div" Type="Decimal" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="uid" Type="Decimal" />
            <asp:Parameter Name="student_id" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="simage" Type="String" />
            <asp:Parameter Name="div" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="uid" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            uid:
            <asp:Label ID="uidLabel1" runat="server" Text='<%# Eval("uid") %>' />
            <br />
            student_id:
            <asp:TextBox ID="student_idTextBox" runat="server" 
                Text='<%# Bind("student_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            emailid:
            <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
            <br />
            mobile:
            <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            uname:
            <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            div:
            <asp:TextBox ID="divTextBox" runat="server" Text='<%# Bind("div") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            uid:
            <asp:TextBox ID="uidTextBox" runat="server" Text='<%# Bind("uid") %>' />
            <br />
            student_id:
            <asp:TextBox ID="student_idTextBox" runat="server" 
                Text='<%# Bind("student_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            emailid:
            <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
            <br />
            mobile:
            <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            uname:
            <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            div:
            <asp:TextBox ID="divTextBox" runat="server" Text='<%# Bind("div") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
            <br />
            student_id:
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Bind("student_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            emailid:
            <asp:Label ID="emailidLabel" runat="server" Text='<%# Bind("emailid") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
            <br />
            uname:
            <asp:Label ID="unameLabel" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            div:
            <asp:Label ID="divLabel" runat="server" Text='<%# Bind("div") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>


