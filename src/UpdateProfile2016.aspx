<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="UpdateProfile2016.aspx.vb" Inherits="UpdateProfile2016" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" DataKeyNames="uid" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" 
        GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
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
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        DeleteCommand="DELETE FROM [reg_details] WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL))" 
        InsertCommand="INSERT INTO [reg_details] ([uid], [student_id], [name], [emailid], [mobile], [city], [uname], [simage], [div]) VALUES (@uid, @student_id, @name, @emailid, @mobile, @city, @uname, @simage, @div)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [uid], [student_id], [name], [emailid], [mobile], [city], [uname], [simage], [div] FROM [reg_details] WHERE ([student_id] = @student_id)" 
        UpdateCommand="UPDATE [reg_details] SET [student_id] = @student_id, [name] = @name, [emailid] = @emailid, [mobile] = @mobile, [city] = @city, [uname] = @uname, [simage] = @simage, [div] = @div WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL))">
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
        <SelectParameters>
            <asp:SessionParameter Name="student_id" SessionField="studid" Type="Decimal" />
        </SelectParameters>
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
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black">
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
        </ItemTemplate>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
    </asp:FormView>
</asp:Content>


