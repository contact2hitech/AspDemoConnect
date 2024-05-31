<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="WizardDemo2017.aspx.vb" Inherits="WizardDemo2017" %>

<%@ Register src="myfooter.ascx" tagname="myfooter" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" BackColor="#EFF3FB" 
        
        BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" 
        Font-Size="0.8em">
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
        <HeaderTemplate>
            DEMO FOR TYBCA 2
        </HeaderTemplate>
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" />
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
            ForeColor="White" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
                <asp:Label ID="Label1" runat="server" Text="WHAT IS YOUR NAME ?"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step 2">
                <asp:Label ID="lblDiv" runat ="server" Text="SELECT YOUR DIV" ></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>DIV1</asp:ListItem>
                    <asp:ListItem>DIV2</asp:ListItem>
                    <asp:ListItem>DIV3</asp:ListItem>
                </asp:DropDownList>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step3">
                <asp:Label ID="lblOut" runat="server" Text="Label"></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
   

    <uc1:myfooter ID="myfooter2" runat="server" />



    <h2>THIS IS FOR TYBCA 1<asp:Wizard ID="Wizard2" runat="server" ActiveStepIndex="1" 
            style="margin-top: 0px" DisplaySideBar="False">
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                Text="Side Ma Ja" />
        </StartNavigationTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
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
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step 2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 3">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
        </asp:Wizard>
    </h2>
    


</asp:Content>


