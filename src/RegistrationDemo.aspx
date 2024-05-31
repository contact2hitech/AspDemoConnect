<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="RegistrationDemo.aspx.vb" Inherits="RegistrationDemo" title="Registration Page"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        #TextArea1
        {
            height: 171px;
            width: 522px;
        }
        
        .style1
        {
            height: 46px;
        }
        .style2
        {
            width: 139px;
        }
        .style3
        {
            height: 46px;
            width: 139px;
        }
        
    .style4
    {
        width: 218px;
    }
    .style5
    {
        height: 46px;
        width: 218px;
    }
        
        .style6
        {
            width: 139px;
            height: 24px;
        }
        .style7
        {
            width: 218px;
            height: 24px;
        }
        .style8
        {
            height: 24px;
        }
        
    </style>
</asp:Content>
<asp:Content  ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">
function copy(){
  document.getElementById('<%=txtUname.ClientID%>').value = document.getElementById('<%=txtEmail.ClientID%>').value;
}
function UserChecker(username) {
             
             lblStatus = document.getElementById('<%=txtEmail.ClientID %>');
 
             if (username == '') {
                 lblStatus.innerHTML = 'Please Enter a User Name';
                 lblStatus.style.color = "black";
 
             }
             else {
 
                 PageMethods.UserNameChecker(username, OnSucceeded);
             }
         }
         function OnSucceeded(result, userContext, methodName)
          {
 
              lblStatus = document.getElementById('<%=txtEmail.ClientID %>');
 
              if (methodName == "UserNameChecker")
              {
 
                  if (result == true)
                  {
                      lblStatus.innerHTML = 'User name not available';
                      lblStatus.style.color = "red";
                  }
 
                  else
                   {
                      lblStatus.innerHTML = 'Use name available';
                      lblStatus.style.color = "green";
                  }
               
 
             }
 
 
         }
</script>
    <div>
    <marquee behavior="alternate"><h1>Please Fill Registration Details :</h1></marquee>
   <table  style="width:100%" class ="mybg">
   <tr>
   <td colspan = 3>ENTER YOUR REGISTRATION DETAILS: 
       
   </td>
   
   
   </tr>
   <tr>
   <td class="style2" ><asp:Label runat="server" Text="Name:" ToolTip="YOur Name Help Tool Tip"></asp:Label></td>
   <td class="style4" >
       <asp:TextBox ID="txtName" class="mytxt" runat="server" CssClass="invertbg" 
           ToolTip="hello"></asp:TextBox></td>
   <td style="margin-left: 40px" >
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="Name Please" ControlToValidate="txtName" Display="Dynamic" 
           SetFocusOnError="True">*</asp:RequiredFieldValidator>
      
                             </td>
   
   </tr>
    <tr>
   <td class="style2" >EMAIL:</td>
   <td class="style4" >
       <asp:TextBox ID="txtEmail" runat="server" class="mytxt" CssClass="invertbg" 
           onkeyup="copy()" AutoPostBack="true"></asp:TextBox></td>
   <td >
       <asp:RequiredFieldValidator ID="RfvEmail" runat="server" 
           ErrorMessage="Email Required..!!!" ControlToValidate="txtEmail" 
           SetFocusOnError="True">Email ID Required</asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="txtEmail" ErrorMessage="Email Incorrect Format" 
           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
           SetFocusOnError="True">*</asp:RegularExpressionValidator>
        </td>
   
   </tr>
    <tr>
   <td class="style6">MOBILE:</td>
   <td class="style7">
       <asp:TextBox ID="txtMob" runat="server" class="mytxt" CssClass="invertbg"></asp:TextBox></td>
   <td class="style8">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ErrorMessage="Mobile Required" ControlToValidate="txtMob" 
           Display="Dynamic">*</asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
           ErrorMessage="Mobile number Invalid !"
        ValidationExpression="^([6-9]{1})([0-9]{9})$" ControlToValidate="txtMob">*</asp:RegularExpressionValidator>
                             </td>
   
   </tr>
    <tr>
   <td class="style2">CITY:</td>
   <td class="style4">
       <asp:TextBox ID="txtCity1" runat="server" CssClass="invertbg"></asp:TextBox></td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ErrorMessage="City Required" ControlToValidate="txtCity1">*</asp:RequiredFieldValidator></td>
   
   </tr>
    <tr>
   <td class="style2" >Username:</td>
   <td style="margin-left: 120px" class="style4" >
       <asp:TextBox ID="txtUname" runat="server" CssClass="invertbg" ReadOnly="true" 
           onkeyup="UserChecker(this.value)" >Your Email is Your Username</asp:TextBox></td>
   <td >
       <asp:Label ID="lblUser" runat="server"></asp:Label>
                                 </td>
   
   </tr>    
       <tr>
   <td class="style2" >Password:</td>
   <td class="style4" >
       <asp:TextBox ID="txtUpass" runat="server" CssClass="invertbg" 
           TextMode="Password"></asp:TextBox></td>
   <td >
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
           ErrorMessage="Password Required" ControlToValidate="txtUpass" 
           Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
   
       </tr>
       <tr>
   <td class="style2">Confirm Password:</td>
   <td style="margin-left: 120px" class="style4">
       <asp:TextBox ID="txtCupass" runat="server" CssClass="invertbg" 
           TextMode="Password"></asp:TextBox></td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
           ControlToValidate="txtCupass" ErrorMessage="Confirm Password " 
           Display="Dynamic">*</asp:RequiredFieldValidator>
       <asp:CompareValidator ID="CompareValidator1" runat="server" 
           ControlToCompare="txtUpass" ControlToValidate="txtCupass" 
           ErrorMessage="Password Not Match" Display="Dynamic">*</asp:CompareValidator>
           </td>
   
       </tr>
   <tr>
   <td class="style3" >
   </td>
   <td class="style5" >
       <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="myimg" />
       <asp:Button ID="btncancel" runat="server" Text="Cancel" 
           CausesValidation="False" SkinID="WBtn2" style="height: 26px" />
   </td>
   <td class="style1" >
       </td>
   </tr>
   <tr>
   <td class="style2" >
       <br />
       <br />
       <br />
       <br />
       </td>
   <td class="style4" >
       <asp:Label ID="lblStatus" runat="server"></asp:Label>
       <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="192px" 
           ForeColor="Blue" HeaderText="Please Correct Following Details" 
           ShowMessageBox="True" ShowSummary="False" />
       </td>
   <td >
       &nbsp;</td>
   </tr>
   <tr>
   <td class="style2">
       &nbsp;</td>
   <td class="style4">
       &nbsp;</td>
   <td>
       &nbsp;</td>
   </tr>
   </table>
   </div>
</asp:Content>









