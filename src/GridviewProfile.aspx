<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="GridviewProfile.aspx.vb" Inherits="GridviewProfile" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="uid" 
            DataSourceID="SqlDataSource1">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" 
                    SortExpression="uid"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="simage" HeaderText="simage" 
                    SortExpression="simage" />
                <asp:BoundField DataField="upassword" HeaderText="upassword" 
                    SortExpression="upassword" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" 
                    SortExpression="student_id"></asp:BoundField>
            </Columns>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:constrsql %>" 
            DeleteCommand="DELETE FROM [reg_details] WHERE [uid] = @original_uid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([upassword] = @original_upassword) OR ([upassword] IS NULL AND @original_upassword IS NULL)) AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL))" 
            InsertCommand="INSERT INTO [reg_details] ([uid], [name], [mobile], [uname], [city], [simage], [upassword], [student_id]) VALUES (@uid, @name, @mobile, @uname, @city, @simage, @upassword, @student_id)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [uid], [name], [mobile], [uname], [city], [simage], [upassword], [student_id] FROM [reg_details] WHERE ([emailid] = @emailid)" 
            UpdateCommand="UPDATE [reg_details] SET [name] = @name, [mobile] = @mobile, [uname] = @uname, [city] = @city, [simage] = @simage, [upassword] = @upassword, [student_id] = @student_id WHERE [uid] = @original_uid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([simage] = @original_simage) OR ([simage] IS NULL AND @original_simage IS NULL)) AND (([upassword] = @original_upassword) OR ([upassword] IS NULL AND @original_upassword IS NULL)) AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL))">
            <SelectParameters>
                <asp:SessionParameter Name="emailid" SessionField="User" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_uid" Type="Decimal" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_mobile" Type="String" />
                <asp:Parameter Name="original_uname" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_simage" Type="String" />
                <asp:Parameter Name="original_upassword" Type="String" />
                <asp:Parameter Name="original_student_id" Type="Decimal" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="simage" Type="String" />
                <asp:Parameter Name="upassword" Type="String" />
                <asp:Parameter Name="student_id" Type="Decimal" />
                <asp:Parameter Name="original_uid" Type="Decimal" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_mobile" Type="String" />
                <asp:Parameter Name="original_uname" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_simage" Type="String" />
                <asp:Parameter Name="original_upassword" Type="String" />
                <asp:Parameter Name="original_student_id" Type="Decimal" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="uid" Type="Decimal" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="simage" Type="String" />
                <asp:Parameter Name="upassword" Type="String" />
                <asp:Parameter Name="student_id" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <h2>
        Recent Files</h2>
                <%--<p>
                    You can Add Quick Links or Menu Control Here ...</p>
                <div class="news_box">
                    <a href="#">No Status</a>
                    <p class="post_info">
                        Posted by <a href="#">Admin</a> on <span>Today</span></p>
                </div>--%>
                <div class="news_box">
                    <a >Last Updated Files.</a>
                    <p class="post_info">
                        <asp:Label ID="lblrecentfiles" runat="server" Text=""></asp:Label>
                    </p>
                    <p class="post_info">
                        Posted by <a href="zContact.aspx">Admin</a> on <span>Today</span></p>
                    <p class="post_info">
                        &nbsp;</p>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px" CellPadding="4">
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                    </asp:Calendar>
                    <div id="mycustomnavigation" runat="server">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server" 
                    PathSeparator=" &gt;&gt;&gt;&gt;&gt;">
                            <NodeStyle BackColor="#FFCCCC" />
                        </asp:SiteMapPath>
                        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
                    Orientation="Horizontal">
                        </asp:Menu>
                        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
                    ShowCheckBoxes="Root" Target="_Self" ShowLines="True" ExpandDepth="0">
                            <HoverNodeStyle Font-Size="20pt" />
                        </asp:TreeView>
                    </div>
    </div>
</asp:Content>



