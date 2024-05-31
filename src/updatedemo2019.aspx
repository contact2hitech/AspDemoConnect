<%@ Page Language="VB" AutoEventWireup="false" CodeFile="updatedemo2019.aspx.vb" Inherits="updatedemo2019" MasterPageFile="~/MainMaster.master" %>

    <asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
  <div>
    <center><h1>Update Profile Page</h1></center><hr />
    <center>
    <table>
    <tr><td class="style1">ROLL NO:</td><td class="style1">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            style="margin-bottom: 0px">
        </asp:DropDownList>
        </td></tr>
    <tr><td class="style1">Name:</td><td class="style1"><asp:TextBox ID="txtname" 
            runat="server"></asp:TextBox></td><td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Please Enter Name" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td>Mobile no:</td><td><asp:TextBox ID="txtmno" runat="server"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtmno" ErrorMessage="Enter Mobile No."></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td>City:</td><td><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="Enter City Please"></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td class="style2">Email:</td><td class="style2"><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="Email Required" 
            Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="Email incorrect format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Display="Dynamic"></asp:RegularExpressionValidator>
        </td></tr>
    <tr><td class="style1">Password:</td><td class="style1">
        <asp:TextBox ID="txtpassword"  runat="server" TextMode="Password"></asp:TextBox></td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                Text="Show Password" />
        </td></tr>
    <tr><td>Confirm Password:</td><td><asp:TextBox ID="txtcpassword"   runat="server" 
            TextMode="Password"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtcpassword" ErrorMessage="Re-enter Password" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpassword" ControlToValidate="txtcpassword" 
                Display="Dynamic" ErrorMessage="Password not matched"></asp:CompareValidator>
        </td></tr>
   <tr><td>IMAGE NAME:</td><td><asp:TextBox ID="txtimage"   runat="server" 
            TextMode="SingleLine"></asp:TextBox></td><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtimage" ErrorMessage="Re-enter IMAGE NAME" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            
        </td></tr>
        <tr><td class="style1">COURSE:</td><td class="style1"><asp:TextBox ID="txtcourse"   runat="server" 
            TextMode="SingleLine"></asp:TextBox></td><td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtimage" ErrorMessage="Re-enter IMAGE NAME" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            
        </td></tr>
   
    </table>
    <br />

     <asp:Button ID="Button1" runat="server" Text="Update"  Width="139px" 
            BackColor="Blue" BorderStyle="Double" Font-Underline="False" 
            ForeColor="White" />
            <asp:Button ID="Button3" runat="server" Text="DELETE"  Width="139px" 
            BackColor="Blue" BorderStyle="Double" Font-Underline="False" 
            ForeColor="White" />
            <asp:Button ID="Button2" runat="server" Text="Cancel"  Width="139px" 
            BackColor="Blue" BorderStyle="Double" Font-Underline="False" 
            ForeColor="White" CausesValidation="False" />
        <br />
        <asp:Label ID="lblresult" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" ShowSummary="False" />
        <br />
        <br />
        <br />
        <br />
        <br />
     </center>
     <a href="gridviewdemo2019.aspx"> <h2>GO TO SHOW RECORDS DEMO PAGE</h2></a>
    </div>
</asp:Content>


    <asp:Content ID="Content2" runat="server" contentplaceholderid="head">
        <style type="text/css">
            .style1
            {
                height: 25px;
            }
            .style2
            {
                height: 28px;
            }
        </style>
</asp:Content>



    