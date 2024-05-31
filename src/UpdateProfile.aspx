<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="UpdateProfile.aspx.vb" Inherits="UpdateProfile" title="Update Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <asp:Label ID="Label1" runat="server" BackColor="#FFCCFF" 
            ForeColor="#FF0066"></asp:Label>
    
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" 
        ImageUrl="" />
    <br />
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUploadPic" runat="server" Text="Upload" 
        CausesValidation="False" />
    <br />
    
    <asp:Label ID="lblImageUploadStatus" runat="server" BackColor="#FFCCFF" 
            ForeColor="#FF0066"></asp:Label>
    
    <br />
MySQL Credentials:<br />
<asp:Label ID="lblMySql" runat="server" BackColor="#FF6699" Font-Bold="True" 
        ForeColor="White"></asp:Label>
    
    <br />
    
    <br />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">
function copy(){
  document.getElementById('<%=txtUname.ClientID%>').value = document.getElementById('<%=txtEmail.ClientID%>').value;
}
</script>
        <div>
    <marquee><h1> <<<- UPDATE YOUR DETAILS BELOW ->>></h1></marquee>
   <table  style="width:100%" class ="mybg">
   <tr>
   <td colspan = 3 class="style1">UPDATE YOUR REG. DETAILS</td>
   
   
   </tr>
   <tr>
   <td class="style3">NAME:</td>
   <td class="style3">
       <asp:TextBox ID="txtName" class="mytxt" runat="server" CssClass="myowntxt"></asp:TextBox></td>
   <td class="style3">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="Name Please" ControlToValidate="txtName" Display="Dynamic" 
           SetFocusOnError="True">*</asp:RequiredFieldValidator>
      
                             </td>
   
   </tr>
    <tr>
   <td class="style2">EMAIL:</td>
   <td class="style2">
       <asp:TextBox ID="txtEmail" runat="server" class="mytxt" CssClass="myowntxt" onkeyup="copy()"></asp:TextBox></td>
   <td class="style2">
       <asp:RequiredFieldValidator ID="RfvEmail" runat="server" 
           ErrorMessage="Email Required" ControlToValidate="txtEmail" 
           Display="Dynamic">*</asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="txtEmail" ErrorMessage="Email Incorrect Format" 
           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
   
   </tr>
    <tr>
   <td>MOBILE:</td>
   <td>
       <asp:TextBox ID="txtMob" runat="server" class="mytxt" CssClass="myowntxt"></asp:TextBox></td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ErrorMessage="Mobile Required" ControlToValidate="txtMob" 
           Display="Dynamic">*</asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
           ErrorMessage="Please enter valid Mobile number!"
        ValidationExpression="^([6-9]{1})([0-9]{9})$" ControlToValidate="txtMob"></asp:RegularExpressionValidator>
                             </td>
   
   </tr>
    <tr>
   <td>CITY:</td>
   <td>
       <asp:TextBox ID="txtCity1" runat="server" CssClass="myowntxt" Height="20px"></asp:TextBox></td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ErrorMessage="City Required" ControlToValidate="txtCity1">*</asp:RequiredFieldValidator></td>
   
   </tr>
    <tr>
   <td class="style2">Username:</td>
   <td style="margin-left: 120px" class="style2">
       <asp:TextBox ID="txtUname" runat="server" CssClass="myowntxt" ReadOnly="True"></asp:TextBox></td>
   <td class="style2">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
           ErrorMessage="Username Required" ControlToValidate="txtUname">*</asp:RequiredFieldValidator></td>
   
   </tr>    
       <tr>
   <td class="style2">Password</td>
   <td class="style2">
       <asp:TextBox ID="txtUpass" runat="server" CssClass="myowntxt" 
           TextMode="Password"></asp:TextBox></td>
   <td class="style2">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
           ErrorMessage="Password Required" ControlToValidate="txtUpass" 
           Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                             </td>
   
       </tr>
       <tr>
   <td>Roll No:</td>
   <td style="margin-left: 120px">
       <asp:TextBox ID="txtCupass" runat="server" CssClass="myowntxt"></asp:TextBox></td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
           ControlToValidate="txtCupass" ErrorMessage="Roll No Incorrect">*</asp:RequiredFieldValidator>
           </td>
           
   
       </tr>
       <tr>
   <td>Division</td>
   <td style="margin-left: 120px">
       <asp:DropDownList ID="DrpDiv" runat="server">
           <asp:ListItem Value="0">SELECT</asp:ListItem>
           <asp:ListItem Value="1">DIV I</asp:ListItem>
           <asp:ListItem Value="2">DIV II</asp:ListItem>
           <asp:ListItem Value="3">DIV III</asp:ListItem>
           <asp:ListItem Value="4">DIV IV</asp:ListItem>
       </asp:DropDownList>
       </td>
   <td>
       <asp:RequiredFieldValidator ID="RfvDiv" runat="server" 
           ControlToValidate="DrpDiv" ErrorMessage="Please Select Division">*</asp:RequiredFieldValidator>
           </td>
           
   
       </tr>
   <tr>
   <td class="style1">
   </td>
   <td class="style1">
       <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="myimg" />
       <asp:Button ID="btncancel" runat="server" Text="Cancel" 
           CausesValidation="False" SkinID="WBtn2" />
   </td>
   <td class="style1">
       &nbsp;</td>
   </tr>
   <tr>
   <td class="style4">
       &nbsp;</td>
   <td class="style4">
       <asp:Label ID="lblStatus" runat="server"></asp:Label>
       <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
       </td>
   <td class="style4">
       </td>
   </tr>
   <tr>
   <td>
       &nbsp;</td>
   <td>
       &nbsp;</td>
   <td>
       &nbsp;</td>
   </tr>
   </table>
   </div>
</asp:Content>


