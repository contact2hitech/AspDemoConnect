<%@ Page Language="VB" MasterPageFile="~/Moderator/Moderator.master" AutoEventWireup="false" CodeFile="Attendance.aspx.vb" Inherits="Moderator_Attendance" title="ATTENDANCE Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="Label1" runat="server" Text="TEST IP"></asp:Label>
        
</asp:Content>


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
        
            <div class="news_box">
                
                    &nbsp;<asp:TextBox ID="txtDate" runat="server" BackColor="Azure" Width="201px"></asp:TextBox>
                
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
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
<asp:DropDownList ID="ddlDiv" runat="server" AutoPostBack="True">
    <asp:ListItem Text="DIV1" Value="DIV1" ></asp:ListItem> 
    <asp:ListItem Text="DIV2" Value="DIV2" ></asp:ListItem> 
    <asp:ListItem>ALL</asp:ListItem>
    <asp:ListItem>ZERO</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnSave" runat="server" Text="Save"  />
    <br />
    <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" >
            <Columns>
                <asp:TemplateField HeaderText="Sr.No" >
                    <ItemTemplate><center>
                        <asp:Label ID="lblSrNo" runat="server" ></asp:Label>
                        </center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Student ID">
                    <ItemTemplate><center>
                        <asp:LinkButton ID="lblRollNo" Text='<%#Eval("student_id") %>' runat="server" PostBackUrl='<%# string.Format("~/Moderator/Stu_Profile.aspx?student_id={0}",Eval("student_id")) %>'></asp:LinkButton>
                        </center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Student Name">
                    <ItemTemplate>
                        <asp:LinkButton ID="lblName" runat="server" Text='<%#Eval("name") %>' PostBackUrl='<%# string.Format("~/Moderator/Stu_Profile.aspx?student_id={0}",Eval("student_id")) %>' ></asp:LinkButton>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Monthly Attendance">
                    <ItemTemplate><center>
                        <asp:CheckBoxList ID="chklstMonth" runat="server" RepeatDirection="Horizontal" Enabled="false" BorderStyle="Ridge" BorderWidth="2" CellSpacing="1"> 
                         </asp:CheckBoxList>
                        </center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Student ID">
                    <ItemTemplate><center>
                        <asp:LinkButton ID="lblRollNo1" Text='<%#Eval("student_id") %>' runat="server" PostBackUrl='<%# string.Format("~/Moderator/Stu_Profile.aspx?student_id={0}",Eval("student_id")) %>'></asp:LinkButton>
                        </center>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Total">
                    <ItemTemplate><center>
                    <asp:Label ID="lbltotal" runat="server"></asp:Label>
                         </center>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
    
            </div>
        </asp:Content>




