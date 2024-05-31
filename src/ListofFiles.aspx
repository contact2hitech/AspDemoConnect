<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="ListofFiles.aspx.vb" Inherits="ListofFiles" Title="List of Files" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:Label ID="lblpath" runat="server"></asp:Label>
       &nbsp;
<asp:Label ID="lblLogin" runat="server"></asp:Label>
<br />

<br />     
    <asp:Label ID="lblinfo" runat="server"></asp:Label>
       &nbsp;TESTING DEMO<asp:Label ID="lblRandom" runat="server"></asp:Label>
       </asp:Content>

   <%--<h2>Today&#39;s Task : <asp:Label ID="lblToday" runat="server"></asp:Label> </h2>
            <p>Create Demos for all Completed Theory Sessions.</p>
                    <p>Time Limit 50 Minutes.</p>
            
            <div class="news_box">
                <a href="RuntimeUserControlDemo.aspx">Today's Sample Demo Link.</a>
                <p class="post_info">Posted by <a href="zContact.aspx">Admin</a> on <span >Today</span></p>
            </div>
            
            <div class="news_box">
                <a href="#">News Update</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>Today</span></p>
                <p class="post_info">&nbsp;</p>
                <p class="post_info">
                    &nbsp;</p>
                    
                <asp:Calendar ID="Calendar1" runat="server" SkinID="mycal" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                </asp:Calendar>
                
            </div>--%>