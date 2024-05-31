<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContainerControls.aspx.vb" Inherits="ContainerControls"  MasterPageFile="~/MainMaster.master"%>





<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
  <html xmlns="http://www.w3.org/1999/xhtml">


<body>
    
    <div style="border: thin dotted #00FFFF; width:100%; background-color:#FFFFCC; font-family: Verdana; font-size: x-large; font-weight: bold;">
        <table style="width:100%; height:100%" >
                <tr style="background-color:#FFCCFF">
                    <td class="style2">
                    </td>
                    <td class="style4">
                    </td>
                    <td class="style1">
                    </td>
                    
                </tr>
                <tr style="background-color: #99FFCC">
                    <td class="style6">
                    </td>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    
                </tr>
                <tr style="background-color: #99FF99">
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                    </td>
                    <td>
                    </td>
                    
                </tr>
        </table>
       <h2>THIS IS PANEL CONTROL DEMO</h2>
        <asp:Panel ID = "mypanel" runat="server" HorizontalAlign="Center" 
            ScrollBars="Horizontal" Wrap="False" BackColor="#996600" 
            DefaultButton="Button2" >
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
            <asp:Button ID="Button1" runat="server" Text="Button" style="width: 56px" />
            <asp:Button ID="Button2" runat="server" Text="Button" style="width: 56px" />
        </asp:Panel>
       <h2>THIS IS PLACEHOLDER CONTROL DEMO</h2>
        <asp:PlaceHolder ID="testplace" runat="server"></asp:PlaceHolder>
    </div>

</body>
</html>
</asp:Content>






