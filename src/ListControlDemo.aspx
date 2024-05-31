<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListControlDemo.aspx.vb" Inherits="ListControlDemo"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"></head>
    <title>LIST CONMTROLS DEMO Page</title>
    <body>
<form id="form1" runat="server">

    <div style="border: thin dotted #00FFFF; width:100%; height:500px; background-color:#FFFFCC; font-family: Verdana; font-size: x-large; font-weight: bold;">
        <table style="width:100%; height:100%" >
                <tr style="background-color:#FFCCFF">
                    <td class="style2">
                        ListBox Control Demo<br />
                        <asp:ListBox ID="ListBox1" runat="server" Rows="10" 
                            SelectionMode="Multiple" Width="212px" 
                            DataSourceID="SqlDataSource1" CausesValidation="True" 
                            DataTextField="city" DataValueField="upassword">
                        </asp:ListBox>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:constrsql %>" 
                            SelectCommand="SELECT * FROM [reg_details]"></asp:SqlDataSource>
                        <br />
                        <asp:Button ID="btnCheck" runat="server" Text="CHECK" />
                        <br />
                        <asp:Label ID="lblListbox" runat="server"></asp:Label>
                    </td>
                    <td class="style4">
                        DropDownlist<br />
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="name" 
                            DataTextFormatString="&quot;{0:d}&quot;" DataValueField="emailid" 
                            AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="style1">
                        CheckBoxList
                        <br />
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="student_id" 
                            RepeatColumns="4" TextAlign="Left">
                        </asp:CheckBoxList>
                    </td>
                    
                </tr>
                <tr style="background-color: #99FFCC">
                    <td class="style6">
                       
                        &nbsp;</td>
                    <td class="style7">
                        RadioButtonList<br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="student_id" 
                            DataValueField="student_id" RepeatColumns="4">
                        </asp:RadioButtonList>
                    </td>
                    <td class="style8">
                     BulletedList<br />
                        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered" DataSourceID="SqlDataSource1" 
                            DataTextField="name" DataValueField="student_id" Height="50px" 
                            Width="150px">
                        </asp:BulletedList>
                    </td>
                    
                </tr>
                <tr style="background-color: #99FF99">
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                    </td>
                    <td>
                    </td>
                    
                </tr>
                <tr style="background-color: #99FF99">
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    
                </tr>
                <tr style="background-color: #99FF99">
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="mobile">
                        </asp:DropDownList>
                        <asp:ListBox ID="ListBox2" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        </asp:CheckBoxList>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        </asp:RadioButtonList>
                        <asp:BulletedList ID="BulletedList3" runat="server">
                        </asp:BulletedList>
                    </td>
                    <td class="style5">
                        <asp:BulletedList ID="BulletedList2" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="mobile" DataValueField="emailid">
                        </asp:BulletedList>
                    </td>
                    <td>
                        &nbsp;</td>
                    
                </tr>
        </table>
    </div>
    </form></body>
</html>

