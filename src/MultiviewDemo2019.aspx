<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MultiviewDemo2019.aspx.vb" Inherits="MultiviewDemo2019" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
            <h1>THIS IS DEMO OF MULTIVIEW CONTROL  (CONTAINER CONTROL)</h1>
            
                <asp:Button ID="btnnexv1" runat="server" Text="NEXT" />
            </asp:View>
            <asp:View ID="View2" runat="server">
            <h2>QUE NO 2</h2>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <asp:Button ID="btnprev2" runat="server" Text="PREV" />
                <asp:Button ID="btnnextv2" runat="server" Text="NEXT" />

            </asp:View>
            <asp:View ID="View3" runat="server">
            <h2>Que No 3 </h2>
                <asp:Image ID="Image1" runat="server" Height="200px" 
                    ImageUrl="https://www.decentfashion.in/wp-content/uploads/2018/02/Funny-Funny-Images.jpg" 
                    Width="200px" />
                <asp:Button ID="btnprev3" runat="server" Text="Prev" />
                <asp:Button ID="btnnexv3"
                    runat="server" Text="NEXT" />
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
