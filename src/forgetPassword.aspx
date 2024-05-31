<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forgetPassword.aspx.vb" Inherits="forgetPassword" MasterPageFile="~/MainMaster.master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel runat="server" >
    <table border="5">
    <tr >
        <td colspan = "2" align ="center">
      <h3> Request New OTP</h3>
        </td>
        <td ></td>
      <td colspan="2" align="center">
          <h3>Already Have OTP</h3>  </td>
    
           </tr>
    <tr>
        <td colspan ="2" rowspan="4" align="center">
        <asp:Label ID="lblEmail" runat="server" Text="EmailID :"></asp:Label>
<br /><br />     
            <asp:TextBox ID="txtEmail" runat="server" Height="22px" Width="190px" TabIndex="0"
                CssClass="invertbg"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Email Required...!!!" ControlToValidate="txtEmail" 
                Display="Dynamic" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Email Incorrect..!!!" ControlToValidate="txtEmail" 
                Display="Dynamic" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="1">*</asp:RegularExpressionValidator>
           
        </td>
        
        <td rowspan="5">&nbsp;&nbsp;<asp:Label runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Names="Lucida Calligraphy" Font-Size="Large">OR</asp:Label>&nbsp;&nbsp;</td>
        <td>
        <asp:Label ID="Label3" runat="server" Text="EmailID :"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtEmailRes" runat="server" Height="22px" Width="190px" TabIndex="0"
                CssClass="invertbg"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="Email Required...!" 
                ControlToValidate="txtEmailRes" Display="Dynamic" ValidationGroup="2">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2" runat="server" 
                ErrorMessage="Email Invalid...!" ControlToValidate="txtEmailRes" 
                Display="Dynamic" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="2">*</asp:RegularExpressionValidator>
        </td>
   
    </tr>
    <tr>
    
    <td ><asp:Label ID="Label5" runat="server" Text="OTP :"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtOTP" runat="server" Height="22px" Width="190px" TabIndex="0"
                CssClass="invertbg"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="OTP Incorrect" ControlToValidate="txtOTP" 
                ValidationGroup="2">*</asp:RequiredFieldValidator>
                 </td>
    </tr>
<tr><td> 
        <asp:Label ID="Label2" runat="server" Text="New Password:"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtNewpwd" runat="server" Height="22px" Width="190px" TabIndex="0"
                CssClass="invertbg" TextMode="Password" ValidationGroup="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Password Required" ControlToValidate="txtNewpwd" 
                ValidationGroup="2">*</asp:RequiredFieldValidator>
    </td>
    </tr>
    
    <tr>
    <td >
        <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtcnfpwd" runat="server" Height="22px" Width="190px" TabIndex="0"
                CssClass="invertbg" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Password Mismatch" ControlToCompare="txtNewpwd" 
                ControlToValidate="txtcnfpwd" ValidationGroup="2" Display="Dynamic">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtcnfpwd" Display="Dynamic" ErrorMessage="Required..!" 
                ValidationGroup="2">*</asp:RequiredFieldValidator>
    </td>
    <tr>
    <td colspan="2" align="center">
    <asp:Button ID="btnRequestOTP" runat="server" Text="Request OTP" Height="23px" Width="120px" 
            TabIndex="0" ValidationGroup="1" />
    </td>
    
    <td colspan ="2" align="center" >
<asp:Button ID="btnReset" runat="server" Text="Reset Password" Height="23px" Width="120px" 
            TabIndex="0" UseSubmitBehavior="False" ValidationGroup="2" />
    </td>
    </tr>
    <tr>
    
    <td colspan="5" align="center">
    <asp:Label ID="lblmystatus" runat="server" ForeColor="Red" 
            Text="OTP is Valid for 48 Hours..!!!" Font-Bold="True"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ValidationGroup="1" ShowMessageBox="True" ShowSummary="False" />
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
            ShowMessageBox="True" ShowSummary="False" ValidationGroup="2" />
        </td>
    </tr>  
    </table>
    </asp:Panel>
</asp:Content>


