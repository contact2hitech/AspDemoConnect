<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="form_view_demo.aspx.vb" Inherits="form_view_demo" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Monotype Corsiva";
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>DEMO OF FORM VIEW</h1>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="uid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" 
                           BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <EditItemTemplate>
            student_id:
            <asp:TextBox ID="student_idTextBox" runat="server" 
                Text='<%# Bind("student_id") %>' />
            <br />
            uid:
            <asp:Label ID="uidLabel1" runat="server" Text='<%# Eval("uid") %>' />
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
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            div:
            <asp:TextBox ID="divTextBox" runat="server" Text='<%# Bind("div") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            student_id:
            <asp:TextBox ID="student_idTextBox" runat="server" 
                Text='<%# Bind("student_id") %>' />
            <br />
            uid:
            <asp:TextBox ID="uidTextBox" runat="server" Text='<%# Bind("uid") %>' />
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
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            div:
            <asp:TextBox ID="divTextBox" runat="server" Text='<%# Bind("div") %>' />
            <br />
            city:
            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            student_id:
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Bind("student_id") %>' />
            <br />
            uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
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
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            div:
            <asp:Label ID="divLabel" runat="server" Text='<%# Bind("div") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <EmptyDataTemplate>
            0 RECORDS
        </EmptyDataTemplate>
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        DeleteCommand="DELETE FROM [reg_details] WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL))" 
        InsertCommand="INSERT INTO [reg_details] ([student_id], [uid], [name], [emailid], [mobile], [simage], [div], [city]) VALUES (@student_id, @uid, @name, @emailid, @mobile, @simage, @div, @city)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [student_id], [uid], [name], [emailid], [mobile], [simage], [div], [city] FROM [reg_details]" 
        UpdateCommand="UPDATE [reg_details] SET [student_id] = @student_id, [name] = @name, [emailid] = @emailid, [mobile] = @mobile, [simage] = @simage, [div] = @div, [city] = @city WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_uid" Type="Decimal" />
            <asp:Parameter Name="original_student_id" Type="Decimal" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_emailid" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_simage" Type="String" />
            <asp:Parameter Name="original_div" Type="Decimal" />
            <asp:Parameter Name="original_city" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="student_id" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="simage" Type="String" />
            <asp:Parameter Name="div" Type="Decimal" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="original_uid" Type="Decimal" />
            <asp:Parameter Name="original_student_id" Type="Decimal" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_emailid" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_simage" Type="String" />
            <asp:Parameter Name="original_div" Type="Decimal" />
            <asp:Parameter Name="original_city" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="student_id" Type="Decimal" />
            <asp:Parameter Name="uid" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="simage" Type="String" />
            <asp:Parameter Name="div" Type="Decimal" />
            <asp:Parameter Name="city" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <h1>DEMO OF DETAILS VIEW </h1>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AllowPaging="True" AutoGenerateRows="False" DataKeyNames="uid" 
        DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        GridLines="None">
        <FooterStyle BackColor="Tan" />
        <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" 
            BackColor="PaleGoldenrod" />
        <Fields>
            <asp:BoundField DataField="student_id" HeaderText="student_id" 
                SortExpression="student_id" />
            <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
                SortExpression="uid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" 
                SortExpression="emailid" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="simage" HeaderText="simage" 
                SortExpression="simage" />
            <asp:BoundField DataField="div" HeaderText="div" SortExpression="div" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />

        <AlternatingRowStyle BackColor="PaleGoldenrod" />

    </asp:DetailsView>

    <br />
    <br />
    <br />
    <br />
    <asp:FormView ID="FormView2" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="sid" 
        DataSourceID="SqlDataSource6" EnableModelValidation="True">
        <EditItemTemplate>
            sid:
            <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            sname:
            <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
            <br />
            smobile:
            <asp:TextBox ID="smobileTextBox" runat="server" Text='<%# Bind("smobile") %>' />
            <br />
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <EmptyDataTemplate>
            : No RECORDS FOUND :
        </EmptyDataTemplate>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <FooterTemplate>
            MY CUSTOM FOOTER&nbsp;
            <asp:Button ID="Button4" runat="server" CommandName="Edit" Text="Edit" />
        </FooterTemplate>
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <HeaderTemplate>
            <asp:Image ID="Image1" runat="server" Height="75px" 
                ImageUrl="~/images/templatemo_logo.JPG" Width="200px" />
        </HeaderTemplate>
        <InsertItemTemplate>
            sid:
            <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
            <br />
            sname:
            <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
            <br />
            smobile:
            <asp:TextBox ID="smobileTextBox" runat="server" Text='<%# Bind("smobile") %>' />
            <br />
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            sid:
            <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            sname:
            <asp:Label ID="snameLabel" runat="server" Text='<%# Bind("sname") %>' />
            <br />
            smobile:
            <asp:Label ID="smobileLabel" runat="server" Text='<%# Bind("smobile") %>' />
            <br />
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Bind("simage") %>' />
            <br />

        </ItemTemplate>
        <PagerSettings Mode="NextPreviousFirstLast" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        DeleteCommand="DELETE FROM [studinfo] WHERE [sid] = @original_sid AND (([sname] = @original_sname) OR ([sname] IS NULL AND @original_sname IS NULL)) AND (([smobile] = @original_smobile) OR ([smobile] IS NULL AND @original_smobile IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL))" 
        InsertCommand="INSERT INTO [studinfo] ([sid], [sname], [smobile], [simage]) VALUES (@sid, @sname, @smobile, @simage)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [studinfo]" 
        UpdateCommand="UPDATE [studinfo] SET [sname] = @sname, [smobile] = @smobile, [simage] = @simage WHERE [sid] = @original_sid AND (([sname] = @original_sname) OR ([sname] IS NULL AND @original_sname IS NULL)) AND (([smobile] = @original_smobile) OR ([smobile] IS NULL AND @original_smobile IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_sid" Type="Decimal" />
            <asp:Parameter Name="original_sname" Type="String" />
            <asp:Parameter Name="original_smobile" Type="String" />
            <asp:Parameter Name="original_simage" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sid" Type="Decimal" />
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="smobile" Type="String" />
            <asp:Parameter Name="simage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="smobile" Type="String" />
            <asp:Parameter Name="simage" Type="String" />
            <asp:Parameter Name="original_sid" Type="Decimal" />
            <asp:Parameter Name="original_sname" Type="String" />
            <asp:Parameter Name="original_smobile" Type="String" />
            <asp:Parameter Name="original_simage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="sid" 
        DataSourceID="SqlDataSource6" EnableModelValidation="True" GridLines="Vertical" 
        Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" 
                SortExpression="sid" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="smobile" HeaderText="smobile" 
                SortExpression="smobile" />
            <asp:TemplateField HeaderText="simage" SortExpression="simage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("simage") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("simage") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="100px" 
                        ImageUrl='<%# "~\image\" & Eval("simage") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>

 <h1>DEMO OF MASTER DETAIL VIEW 
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         DataKeyNames="did" DataSourceID="SqlDataSource2">
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="did" HeaderText="did" ReadOnly="True" 
                 SortExpression="did" />
             <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
         ConnectionString="<%$ ConnectionStrings:constrsql %>" 
         SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
    </h1>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="eid" 
        DataSourceID="SqlDataSource3">
        <ItemTemplate>
            eid:
            <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
            <br />
            ename:
            <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
            <br />
            did:
            <asp:Label ID="didLabel" runat="server" Text='<%# Eval("did") %>' />
            <br />
            salary:
            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [employee] WHERE ([did] = @did)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="did" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource4" DataTextField="dname" DataValueField="did">
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
    <asp:DataList ID="DataList2" runat="server" DataKeyField="eid" 
        DataSourceID="SqlDataSource5">
        <ItemTemplate>
            eid:
            <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
            <br />
            ename:
            <asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' />
            <br />
            did:
            <asp:Label ID="didLabel" runat="server" Text='<%# Eval("did") %>' />
            <br />
            salary:
            <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    THIS IS DEMO FOR STUDENT PROFILE<br />
    <br />
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource6" DataTextField="sname" DataValueField="sid">
    </asp:RadioButtonList>
    <br />
    <br />
    <span class="style1">PROFILE OF SELECTED STUDENT</span><br />
    <br />
    <asp:FormView ID="FormView3" runat="server" DataKeyNames="sid" 
        DataSourceID="SqlDataSource7" EnableModelValidation="True">
        <EditItemTemplate>
            sid:
            <asp:Label ID="sidLabel1" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            sname:
            <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
            <br />
            smobile:
            <asp:TextBox ID="smobileTextBox" runat="server" Text='<%# Bind("smobile") %>' />
            <br />
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            sid:
            <asp:TextBox ID="sidTextBox" runat="server" Text='<%# Bind("sid") %>' />
            <br />
            sname:
            <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
            <br />
            smobile:
            <asp:TextBox ID="smobileTextBox" runat="server" Text='<%# Bind("smobile") %>' />
            <br />
            simage:
            <asp:TextBox ID="simageTextBox" runat="server" Text='<%# Bind("simage") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            sid:
            <asp:Label ID="sidLabel" runat="server" Text='<%# Eval("sid") %>' />
            <br />
            sname:
            <asp:Label ID="snameLabel" runat="server" Text='<%# Bind("sname") %>' />
            <br />
            smobile:
            <asp:Label ID="smobileLabel" runat="server" Text='<%# Bind("smobile") %>' />
            <br />
            simage:
            <asp:Label ID="simageLabel" runat="server" Text='<%# Bind("simage") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [studinfo] WHERE ([sid] = @sid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList2" Name="sid" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [employee] WHERE ([did] = @did)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="did" 
                PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>

    </asp:Content>

