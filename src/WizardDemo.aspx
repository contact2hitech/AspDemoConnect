<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="WizardDemo.aspx.vb" Inherits="WizardDemo" title="Untitled Page" %>







<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" 
        FinishCompleteButtonText="BYE" Width="208px" BackColor="#F7F6F3" 
    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
    Font-Names="Verdana" Font-Size="0.8em">
        <HeaderTemplate>TEST
        </HeaderTemplate>
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
            VerticalAlign="Top" />
        <HeaderStyle BackColor=Aqua />
        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                Text="Next" />
        </StartNavigationTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
                What is Your Name<br />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step 2">
            Please Select a Date
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step3">
            Upload A File
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="Upload" />
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step4">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/004.jpg" />
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step5">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:Image ID="Image2" runat="server" Height="200px" Width="400px" />
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    hello from demo
    <asp:Wizard ID="Wizard2" runat="server" ActiveStepIndex="1" 
        FinishCompleteButtonText="123">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                dfdfdf<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    <br />
    <br />
    <asp:Wizard ID="Wizard3" runat="server" ActiveStepIndex="2">
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
            PLEASE ENTER YOUR NAME <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step 2">
            Please enter your age<asp:TextBox ID ="txtage" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="step 3">
            <asp:Label ID="lbltest" runat="server" ></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
<br />
<asp:Wizard ID="Wizard4" runat="server" ActiveStepIndex="2" BackColor="#FFFBD6" 
    BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
    HeaderText="MY CUSTOM FORM">
    <StartNavigationTemplate>
        <asp:Button ID="StartNextButton" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" Text="Next" />
        <asp:Button ID="FinishButton" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" Text="Finish" />
    </StartNavigationTemplate>
    <StepNavigationTemplate>
        <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
            Font-Size="0.8em" ForeColor="#990000" Text="Previous" />
        <asp:Button ID="StepNextButton" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" Text="Next" />
    </StepNavigationTemplate>
    <WizardSteps>
        <asp:WizardStep runat="server" title="Step 1">
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </asp:WizardStep>
        <asp:WizardStep runat="server" Title="Step2">
            <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Email Compulsory"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Invalid Email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </asp:WizardStep>
        <asp:WizardStep runat="server" title="Step 3">
            <asp:Label ID="lblLastDisplay" runat="server"></asp:Label>
            <br />
        </asp:WizardStep>
    </WizardSteps>
    <SideBarButtonStyle ForeColor="White" />
    <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#990000" />
    <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
    <FinishNavigationTemplate>
        <asp:Button ID="FinishPreviousButton" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
            Font-Size="0.8em" ForeColor="#990000" Text="Previous" />
        <asp:Button ID="FinishButton" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" 
            CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#990000" Text="Finish" />
    </FinishNavigationTemplate>
    <HeaderStyle BackColor="#FF66CC" ForeColor="#CCFFCC" />
</asp:Wizard>

<div>
<br />
<br /><br />
   
    <br /><br /><br /><br />

</div>
</asp:Content>


