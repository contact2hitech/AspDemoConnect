<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Datalist2015.aspx.vb" Inherits="Datalist2015" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>THIS IS DEMO OF DATALIST 2019</h1>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" SelectedIndex=0 EditItemIndex=100>
    <ItemTemplate>
    <asp:Label ID="lblid" Text='<%# Eval("uid") %>' runat="server"></asp:Label>
    </ItemTemplate>
    
    <HeaderTemplate>
    <h3>THIS IS MY HEADER SECTION</h3>
    </HeaderTemplate>
    <FooterTemplate>
    <a href="http://www.amrolibca.org" >MY COLLEGE WEBSITE</a>
    </FooterTemplate>
    <SelectedItemTemplate>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    
    </SelectedItemTemplate>
    <EditItemTemplate>
    <asp:TextBox runat="server" ID="txt123"></asp:TextBox>
    </EditItemTemplate>
    <SeparatorTemplate>
    __________+++++++++++___________
    </SeparatorTemplate>
    </asp:DataList>
    <h1>This is Repeater Demo 2019</h1>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
    <ItemTemplate>
    <table border=2 style="background-color:Aqua">
    <tr >
    <td>USER ID: <asp:Label ID="lbluid" runat="server" Text='<%# Eval("student_id") %>'></asp:Label></td>
    <td rowspan=3>
        
    <a href="<%# "profilephotos\" & Eval("simage") %>">    <asp:Image ID="Image2" runat="server" Height=100 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' /></a>

    </td>
        
    </tr>
    <tr>
    <td>USER NAME: <asp:Label ID="Label6" runat="server" Text='<%# Eval("name") %>'></asp:Label></td>
    
    </tr>
    <tr>
    <td>USER EMAIL: <asp:Label ID="Label7" runat="server" Text='<%# Eval("emailid") %>'></asp:Label></td>
    
    </tr>
    </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
        <table border=2>
    <tr >
    <td>USER ID: <asp:Label ID="lbluid" runat="server" Text='<%# Eval("student_id") %>'></asp:Label></td>
    <td rowspan=3>
        <asp:Image ID="Image2" runat="server" Height=100 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' />

    </td>
        
    </tr>
    <tr>
    <td>USER NAME: <asp:Label ID="Label6" runat="server" Text='<%# Eval("name") %>'></asp:Label></td>
    
    </tr>
    <tr>
    <td>USER EMAIL: <asp:Label ID="Label7" runat="server" Text='<%# Eval("emailid") %>'></asp:Label></td>
    
    </tr>
    </table>
    
    
        
        
        </AlternatingItemTemplate>
        <SeparatorTemplate> 
        <asp:AdRotator ID="AdRotator5" runat="server" AdvertisementFile="~/Advertisement.xml" 
                    BorderStyle="Dashed" Height="100px" Width="525px" 
                    KeywordFilter="General" />
        </SeparatorTemplate>

    </asp:Repeater>
    
    
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        SelectCommand="SELECT * FROM [reg_details]"></asp:SqlDataSource>
    
    
    
    <h1>
    DATALIST</h1>
<p>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="uid" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" 
        RepeatDirection="Horizontal" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <ItemStyle ForeColor="#000066" />
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
            <br />
            student_id:
            <asp:Label ID="student_idLabel" runat="server" 
                Text='<%# Eval("student_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            emailid:
            <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            div:
            <asp:Label ID="divLabel" runat="server" Text='<%# Eval("div") %>' />
            <br />
            iMAGE:
            <asp:Image ID="Image1" runat="server" Height="100px" 
                ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>' Width="100px" />
            <br />
        </ItemTemplate>
    </asp:DataList>
</p>
<h1>
    REPEATER CONTROL</h1>
<p>
    &nbsp;
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
    <table border="2" style="text-align:center">
    <tr>
    <td>Roll No: </td>
    <td><asp:Label ID="lbl1" runat="server" text='<%# Eval("student_id") %>'></asp:Label></td>
    <td>Div: </td>
    <td><asp:Label ID="Label1" runat="server" text='<%# Eval("div") %>'></asp:Label></td>
    <td>Image </td>
    <td></td>
    </tr>
   
    <tr>
    <td>Name:</td>
    <td  colspan="3"><asp:Label ID="Label2" runat="server" text='<%# Eval("name") %>'></asp:Label></td>
    <td rowspan="3"><br /><asp:Image ID="imgpro" runat="server" Height=150 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>'></asp:Image></td>
    </tr>
    <tr>
    <td>city:</td><td><asp:Label ID="Label3" runat="server" text='<%# Eval("city") %>'></asp:Label></td>
    <td>Mobile:</td><td><asp:Label ID="Label4" runat="server" text='<%# Eval("mobile") %>'></asp:Label></td>
    <td></td>
    </tr>
    <tr>
    <td >Email</td><td colspan="3"><asp:Label ID="Label5" runat="server" text='<%# Eval("emailid") %>'></asp:Label></td>
    </tr>
    </table>
    
    
    </ItemTemplate>
<SeparatorTemplate>sample by sutex </SeparatorTemplate>
<HeaderTemplate><center><h1>HELLO ALL DEAR STUDENTS</h1></center> </HeaderTemplate>
    <AlternatingItemTemplate>
        <table border="2" style="text-align:center">
    <tr>
    <td>Roll No: </td>
    <td><asp:Label ID="lbl1" runat="server" text='<%# Eval("student_id") %>'></asp:Label></td>
    <td>Div: </td>
    <td><asp:Label ID="Label1" runat="server" text='<%# Eval("div") %>'></asp:Label></td>
    <td>Image </td>
    <td></td>
    </tr>
   
    <tr>
    <td>Name:</td>
    <td  colspan="3"><asp:Label ID="Label2" runat="server" text='<%# Eval("name") %>'></asp:Label></td>
    <td rowspan="3"><br /><asp:Image ID="imgpro" runat="server" Height=150 Width=100 ImageUrl='<%# "~\profilephotos\" & Eval("simage") %>'></asp:Image></td>
    </tr>
    <tr>
    <td>city:</td><td><asp:Label ID="Label3" runat="server" text='<%# Eval("city") %>'></asp:Label></td>
    <td>Mobile:</td><td><asp:Label ID="Label4" runat="server" text='<%# Eval("mobile") %>'></asp:Label></td>
    <td></td>
    </tr>
    <tr>
    <td >Email</td><td colspan="3"><asp:Label ID="Label5" runat="server" text='<%# Eval("emailid") %>'></asp:Label></td>
    </tr>
    </table>

    
    </AlternatingItemTemplate>
    <FooterTemplate>
    BYE BYE FROM REPEATER</FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constrsql %>" 
        
        SelectCommand="SELECT [uid], [student_id], [name], [emailid], [mobile], [city], [div] ,[simage] FROM [reg_details]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [reg_details] WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL))" 
        InsertCommand="INSERT INTO [reg_details] ([uid], [student_id], [name], [emailid], [mobile], [city], [div]) VALUES (@uid, @student_id, @name, @emailid, @mobile, @city, @div)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [reg_details] SET [student_id] = @student_id, [name] = @name, [emailid] = @emailid, [mobile] = @mobile, [city] = @city, [div] = @div WHERE [uid] = @original_uid AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([div] = @original_div) OR ([div] IS NULL AND @original_div IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_uid" Type="Decimal" />
            <asp:Parameter Name="original_student_id" Type="Decimal" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_emailid" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_div" Type="Decimal" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="student_id" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="div" Type="Decimal" />
            <asp:Parameter Name="original_uid" Type="Decimal" />
            <asp:Parameter Name="original_student_id" Type="Decimal" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_emailid" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_div" Type="Decimal" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="uid" Type="Decimal" />
            <asp:Parameter Name="student_id" Type="Decimal" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="div" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>
    FORM VIEW</p>
    <p>
        &nbsp;</p>
    <p>
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
                div:
                <asp:Label ID="divLabel" runat="server" Text='<%# Bind("div") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
    </p>
<p>
    &nbsp;</p>
</asp:Content>


