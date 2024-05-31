<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MultiviewDemo.aspx.vb" Inherits="MultiviewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/ucInputDemo.ascx" TagPrefix="uchpp" TagName="myusercontrol"  %>
<%@ Register Src="~/myfooter.ascx" TagPrefix="uchpp" TagName="myusercontrol1"  %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Multiview Control Demo<br />
        <br />
        <br />
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BackColor="#94C9E9" BorderColor="#99FF33">
        <asp:MultiView ID="MultiView1" runat="server" 
    ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <br />
                <asp:Label ID="lblQue" runat="server" 
                    Text="Q: what is the name of your College ?"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnNext" runat="server" Text="Next" />
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Label ID="lblAns" runat="server" Text="Ans:"></asp:Label>
                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>SUTEX</asp:ListItem>
                    <asp:ListItem>S V PATEL</asp:ListItem>
                    <asp:ListItem>VNSGU</asp:ListItem>
                    <asp:ListItem>SRIMCA</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <br />
                <asp:Button ID="btnPre" runat="server" Text="Previous" />
                <asp:Button ID="btnAns" runat="server" Text="Answer" />
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Button ID="btnAnsShow" runat="server" Text="Show" />
                <asp:Label ID="lblShowAns" runat="server"></asp:Label>
            </asp:View>
        </asp:MultiView>
    </asp:Panel>
    <p>
        MULTI VIEW DEMO 2</p>
    <asp:Panel ID="Panel2" runat="server" BackColor="#9966FF" BorderColor="#33CC33" 
        BorderWidth="10px">
        <asp:MultiView ID="MultiView2" runat="server" 
    ActiveViewIndex="0">
            <asp:View ID="myview1" runat="server">
                HELLO PLEASE ENTER YOUR NAME
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="btn2Next" runat="server" Text="Next" />
            </asp:View>
            <br />
            <asp:View ID="myview2" runat="server">
                <asp:Button ID="btn2Show" runat="server" Text="SHOW " />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME BACK YOUR NAME IS
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </asp:View>
        </asp:MultiView>
    </asp:Panel>
    <p>
    
       
    
    </p>
    <asp:Panel ID="Panel3" runat="server" BackColor="#9999FF">
        <asp:MultiView ID="MultiView3" runat="server" ActiveViewIndex="0">
            <asp:View ID="customview" runat="server">
                HELLO FROM VIEW 1<br />
                NAME<br />
                EMAIl<br />
                PWD<br />
                PERSONAL DETAILS<br />
                <asp:Button ID="Button1" runat="server" Text="&gt;" />
            </asp:View>
            <asp:View ID="View4" runat="server">
                WELCOME FROM VIEW 2<br />
                THIS IS FOR YOUR HOBBIES AND PARTICULARS<br />
                <asp:Button ID="Button2" runat="server" Text="&lt;" />
                <asp:Button ID="Button3" runat="server" Text="&gt;" />
            </asp:View>
            <asp:View ID="View5" runat="server">
                FINAL PAGE
                <br />
                FOR SUBMITTING DETAILS<asp:Calendar ID="Calendar1" runat="server" 
                    FirstDayOfWeek="Thursday" NextMonthText="?" NextPrevFormat="FullMonth" 
                    SelectionMode="DayWeekMonth">
                    <DayStyle BackColor="#CCFFFF" BorderColor="#990000" BorderStyle="Dotted" />
                </asp:Calendar>
                <asp:Calendar ID="Calendar2" runat="server" DayNameFormat="Full" 
                    FirstDayOfWeek="Saturday" SelectedDate="2014-07-16" 
                    SelectionMode="DayWeekMonth">
                    <DayStyle BackColor="#66FF33" BorderStyle="Groove" />
                    <DayHeaderStyle BackColor="#CC33FF" Font-Names="Monotype Corsiva" 
                        Font-Strikeout="False" />
                </asp:Calendar>
                <br />
                <asp:Button ID="Button4" runat="server" Text="&lt;" />
                <asp:Button ID="Button5" runat="server" Text="HOME" />
            </asp:View>
        </asp:MultiView>
    </asp:Panel>
<p>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <asp:Button ID="Button6" runat="server" Text="create Control" />
    </p>
    <p>
        <asp:Table runat="server" Height="115px" Width="222px" >
        <asp:TableRow>
        <asp:TableCell>
        </asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
        </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
            <asp:TableRow runat="server">
            </asp:TableRow>
        </asp:Table>&nbsp;</p>
    <div>
    <asp:MultiView runat="server" ID="mynewmultiview" ActiveViewIndex="0">
        <asp:View ID="ViewPersonalDetails" runat="server">
        <table>
        <tr>
        <td>NAME PLEASE&nbsp; </td>
        <td><asp:TextBox runat="server" ID="txtName"></asp:TextBox></td>
        </tr>
            <tr>
                <td>
                    <asp:Button ID="btnNextmyview" runat="server" Text="Next" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </asp:View>
     
        <asp:View ID="View7" runat="server">
            YOUR DETAILS A<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            RE<asp:Button ID="btnPrevmyview" runat="server" Text="Prev" />
            <asp:Button ID="btnNextmyveiw2" runat="server" Text="Next" />
        </asp:View>
        <asp:View ID="View8" runat="server">
            YOUR HOBBIES A<asp:CheckBox ID="CheckBox1" runat="server" Text="Cricket" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="KHO-KHO" />
            RE<asp:Button ID="btnPrevview3" runat="server" Text="Prev" />
            <asp:Button ID="btnNextMyvie3" runat="server" Text="Next" />
        </asp:View>
        <asp:View ID="View9" runat="server">
            YOUR COMPLETE PROFILE IS AS BELOW<asp:Button ID="btnDisplay" runat="server" 
                Text="Show" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </asp:View>
     
        </asp:MultiView>
    </div>
<p>
    &nbsp;</p>
<p>
    <asp:MultiView ID="MultiView4" runat="server" ActiveViewIndex="0">
        <asp:View ID="View10" runat="server">
            H<asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </asp:View>
        <asp:View ID="View11" runat="server">
            &nbsp; I
        </asp:View>
        <asp:View ID="View12" runat="server">
            &nbsp; T&nbsp;
        </asp:View>
        <asp:View ID="View13" runat="server">
            &nbsp;&nbsp;&nbsp; E&nbsp;
        </asp:View>
    </asp:MultiView>

        </p>

       <uchpp:myusercontrol ID="mynewuc" runat="server" />

    </form>

</body>
</html>
