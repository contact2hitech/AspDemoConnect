<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FirstPage2016.aspx.vb" Inherits="FirstPage2016" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME TO 1st PAGE</title>
</head>
<body style="width:100%;height=100%;background-color:Yellow">
    <form id="form1" runat="server">
    <div >
    <table>
    <tr>
    <td>
    <asp:Button ID="Button1" runat="server" Text="Button" />
        


        



        
        
    </td>
    <td>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>

    </td>
    </tr>
    <tr>
    <td>
    <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
    </td>
    <td>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            CausesValidation="True">
            <asp:ListItem>FYBCA</asp:ListItem>
            <asp:ListItem>SYBCA</asp:ListItem>
            <asp:ListItem>TYBCA</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    <asp:CheckBox ID="CheckBox1" runat="server" />
    </td>
    <td>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
    </td>
    </tr>
    </table>
    
        
    
    </div>
    </form>
</body>
</html>
