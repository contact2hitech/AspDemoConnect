<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NavigationDemo.aspx.vb" Inherits="NavigationDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigation Demo Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>THIS IS SITEMAPPATH CONTROL DEMO</h2>
        YOU ARE HERE: &gt;
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="CurrentToRoot">
        </asp:SiteMapPath>
    <h2>THIS IS MENU CONTROL DEMO</h2>
        <asp:Menu ID="Menu1" runat="server"  
            MaximumDynamicDisplayLevels="10" Target="_self" 
            DataSourceID="SiteMapDataSource1" Orientation="Horizontal" PathSeparator="=" 
            StaticDisplayLevels="5" StaticSubMenuIndent="">
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <br />
        <br />


        <h2>THIS IS TREEVIEW CONTROL DEMO</h2>

        <asp:TreeView ID="TreeView1" runat="server" 
            CollapseImageUrl="~/images/templatemo_logo.JPG" 
            ExpandImageUrl="~/image/006.jpg" NodeIndent="25" ShowCheckBoxes="All" 
            ShowExpandCollapse="False" DataSourceID="SiteMapDataSource2">
            <HoverNodeStyle BackColor="#9999FF" BorderStyle="Groove" />
            <SelectedNodeStyle BackColor="#66FF33" />
        </asp:TreeView>
    
        <asp:SiteMapDataSource ID="SiteMapDataSource2" runat="server" />
    
    </div>
    </form>
</body>
</html>
