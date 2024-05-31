<%@ Control Language="VB" AutoEventWireup="false" CodeFile="dobpicker.ascx.vb" Inherits="dobpicker" %>
<asp:Panel ID="Panel1" runat="server" BackColor="#FF3399" BorderColor="#FF99CC">
    Please Select Date: <asp:Calendar ID="Calendar1" runat="server" 
    BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
    ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" 
        Visible="False">
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" 
        Height="1px" />
        <TitleStyle BackColor="#990000" Font-Bold="True" 
        Font-Size="9pt" ForeColor="#FFFFCC" />
    </asp:Calendar>
    <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
</asp:Panel>
