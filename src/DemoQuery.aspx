<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DemoQuery.aspx.vb" Inherits="DemoQuery"  %>
<%@ Register src="myfooter.ascx" tagname="myfooter" tagprefix="hpp" %>
    <head runat="server">
    <title>QUERY STRING DEMO Page</title>
    <style type="text/css">
        #TextArea1
        {
            height: 274px;
            width: 948px;
        }
    </style>
    </head>
    <form id="form1" runat="server">

    <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
    <div >
        <asp:Label ID="lblmessage" runat="server" ForeColor="#FF0066"></asp:Label>
        THIS IS MAIN PAGE<br />
    </div>
    <asp:Label ID="Label1" runat="server" Text="NAME PLEASE"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="YOU ARE "></asp:Label>
    <asp:RadioButton ID = "radm" Text ="MALE" runat="server" GroupName="1" />
    <asp:RadioButton ID = "radf" text = "FEMALE" runat="server" GroupName="1" />
    
    <br />
    <asp:Label ID="Label3" runat="server" Text="AGE PLEASE"></asp:Label>
    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" style="width: 61px;" />
    <asp:Button ID="Button2" runat="server" Text="Test" style="width: 61px;" />
    <br />
    <br />
    
    <textarea style="height: 358px; width: 951px">
    Partial Class DemoQuery
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim bgen As Boolean
        If radm.Checked = False And radf.Checked = False Then
            lblmessage.Text = "..... please select any option......... " & "<br>"

        Else
            If radm.Checked = True Then
                bgen = True
            Else
                bgen = False
            End If
            Response.Redirect("second.aspx?Name=" & TextBox1.Text & "&Gen=" & bgen & "&Age=" & txtage.Text)
        End If


    End Sub
End Class

    </textarea>
    <br />
    
    <hpp:myfooter ID = "myfoot1" runat = "server" />
    </form>
</body>
</html>
