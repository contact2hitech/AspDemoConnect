<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ValidationDemo.aspx.vb" Inherits="ValidationDemo" MasterPageFile="~/MainMaster.master" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h3>
        Welcome to my Website. This website contains Examples for ASP.Net. You can 
                find all the Demos for different controls and functionality of ASP.Net</h3>
    
      <div style="border: thin dotted #00FFFF; width:100%; height:500px; background-color:#FFFFCC; font-family: Verdana; font-size: x-large; font-weight: bold;">
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
                                <table style="width:100%; height:100%" >
                                    <tr>
                                    <td class="style10">
                                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                    </td>
                                    
                                    <td class="style10">
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    </td>
                                    
                                    <td class="style10">
                                        <asp:RequiredFieldValidator ID="rfvtxtname" runat="server" 
                                            ControlToValidate="txtName" ErrorMessage="Req Feild Validator for Name">Please Enter Name</asp:RequiredFieldValidator>
                                    </td>
                                    
                                    </tr>
                                    <tr>
                                    <td class="style9">
                                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                                    </td>
                                    
                                    <td class="style9">
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    </td>
                                    
                                    <td class="style9">

                                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
                                            ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email Required">Email Required</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revemail" runat="server" 
                                            ControlToValidate="txtEmail" ErrorMessage="Email ID Incorrect" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email ID Incorrect</asp:RegularExpressionValidator>
                                    </td>
                                    
                                    </tr>
                                    
                                    <tr>
                                    <td class="style11">
                                        <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
                                    </td>
                                    
                                    <td class="style11">
                                        <asp:TextBox ID="txtMobile" runat="server" MaxLength="10"></asp:TextBox>
                                    </td>
                                    
                                    <td class="style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="txtMobile" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    
                                    </tr>
                                    
                                    <tr>
                                    <td class="style13">
                                        password</td>
                                    
                                    <td class="style13">
                                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    
                                    <td class="style13">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="txtpwd" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtcpwd" 
                                            ErrorMessage="CompareValidator" Operator="NotEqual" ValueToCompare="SURAT">YOU MUST ENTER SURAT</asp:CompareValidator>
                                    </td>
                                    
                                    </tr>
                                    
                                    <tr>
                                    <td class="style12">
                                        Confirm password</td>
                                    
                                    <td class="style12">
                                        <asp:TextBox ID="txtcpwd" runat="server"></asp:TextBox>
                                    </td>
                                    
                                    <td class="style12">
                                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                                        </td>
                                    
                                    </tr>
                                    
                                    <tr>
                                    <td class="style12">
                                        AGE</td>
                                    
                                    <td class="style12">
                                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                                    </td>
                                    
                                    <td class="style12">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="txtAge" ErrorMessage="AGE PLEASE">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                            ControlToValidate="txtAge" ErrorMessage="AGE NOT MATCHING" 
                                            MaximumValue="7/4/2015" MinimumValue="1/1/2000" Type="Date" 
                                            SetFocusOnError="True">YOU ARE NOT     ELIGIBLE</asp:RangeValidator>
                                            </td>
                                    
                                    </tr>
                                    <tr>
                                    <td>ENTER EVEN NUMBER</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:CustomValidator ID="CustomValidator2" runat="server" 
                                            ErrorMessage="EVEN NUMBERS ONLY...!" 
                                            OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator></td>

                                    </tr>
                                    
                                </table>
                    </td>
                    
                </tr>
                <tr style="background-color: #99FF99">
                    <td class="style3">
                    </td>
                    <td class="style5">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" 
                            CausesValidation="False" />
                    &nbsp;&nbsp;
                        </td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            ShowMessageBox="True" />
                    </td>
                    
                </tr>
        </table>
    </div>
  
</asp:Content>


