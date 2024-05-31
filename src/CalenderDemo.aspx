<%@ Page Language="VB" MasterPageFile="~/MainMaster.master"  AutoEventWireup="false" CodeFile="CalenderDemo.aspx.vb" Inherits="CalenderDemo" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h2>Welcome to this Example of Calender Control.This page shows effects of different 
    properties.</h2>
    <table >
    <tr align="center">
    <td >
    <asp:Calendar ID="Calendar3" runat="server" BackColor="White" 
                              BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                              DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                              ForeColor="#003399" Height="194px" SelectionMode="DayWeekMonth" 
                              Width="216px">
                               <SelectedDayStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#CCFF99" />
                               <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                               <WeekendDayStyle BackColor="#CCCCFF" />
                               <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                               <OtherMonthDayStyle ForeColor="#999999" />
                               <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                               <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                               <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                                   Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                          </asp:Calendar>
    </td>
    
    <td>
    
    <asp:Button ID="btnCheck" runat="server" Text="Check" />
    <h5>Your Selection</h5> 
    </td>
    <td><asp:ListBox ID="ListBox1" runat="server" Rows="8" Width="100px"></asp:ListBox>
    
    </td>    
    </tr>
    
    </table>
    <p> You can find all the Demos for different controls and functionality of ASP.Net 
                in Examples Section. Click here for <a href="ListofFiles.aspx" target="_parent">More ASP.NET SAMPLES...</a>
</asp:Content>




