<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LiteralDemo.aspx.vb" Inherits="LiteralDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> <asp:Literal ID="Literal2" runat="server"></asp:Literal> Page
    
    </title>
</head>
<body>
    <form id="form1" runat="server">
   <h1>THIS IS DEMO OF LITERAL CONTROL</h1>
   <h3>PLEASE ENTER YOUR NAME IN THIS TEXTBOX AND THEN CLICK THE BUTTON AND SEE THE TITLE</h3>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="btnLiteral" runat="server" Text="CHANGE TITLE" />
   
    <br />
    <br />
    <br />

    <h2>TEXT AREA FOR CODE</h2>
    <textarea style="width:100%;height:200px">
inside head tag        
    
    <title>asp:Literal ID="Literal1" runat="server"></asp:Literal> >>
     Page
    
    </title>
</head>--%>
code behind file code
        Protected Sub btnLiteral_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLiteral.Click
        Literal2.Text = TextBox1.Text & "'s Page"
               
        End Sub
    <br />
    <br />
    <br />
    </textarea>
   <%-- <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" 
        Text="Submit" />
    <asp:Button ID="Button3" runat="server" Text="Cancel" CausesValidation="False" 
        Height="26px" Width="60px" />
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/image/404-error.jpg" Height="40px" 
        PostBackUrl="~/PostBackDemo.aspx" Width="40px" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PostBackDemo.aspx" 
        Target="_blank">HyperLink</asp:HyperLink>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Size="20pt" ForeColor="#FF5050" Text="Label"></asp:Label>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="HOBBIES" ToolTip="hello" />
    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="123" Text="MALE" />
    <asp:RadioButton ID="RadioButton2" runat="server" Checked="True" 
        GroupName="123" Text="FEMALE" />
    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="123" Text="UNK" />
    <br />
    <br />
    <asp:BulletedList ID="BulletedList1" runat="server">
    </asp:BulletedList>
    <div style="margin-left: 40px">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
            RepeatColumns="4">
            <asp:ListItem Value="195">BCA</asp:ListItem>
            <asp:ListItem Value="197">BBA</asp:ListItem>
            <asp:ListItem Value="100">BCOM</asp:ListItem>
            <asp:ListItem>BSc</asp:ListItem>
            <asp:ListItem>BE</asp:ListItem>
            <asp:ListItem>ME</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>
            <asp:ListItem>MBA</asp:ListItem>
            <asp:ListItem>MCOM</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <div style="margin-left: 40px">
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </div>
    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
    </asp:RadioButtonList>
   <a href="PostBackDemo.aspx">HTML</a>
   <a id="s123" runat="server" href="PostBackDemo.aspx" onserverclick="Button1_Click">HTML SERVER</a>--%>
    </form>
</body>
</html>
