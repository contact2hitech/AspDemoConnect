<%@ Page Language="VB" MasterPageFile="~/SampleChild.master" AutoEventWireup="false" CodeFile="FYBCA.aspx.vb" Inherits="FYBCA" %>
<%@ Register Src="~/ucInformationDemo.ascx" TagName="tybca2" TagPrefix="sutexbca" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
    
    </div>
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
        ExpandImageUrl="~/uploaded/Water lilies.jpg" NodeIndent="25" PathSeparator="#" 
        ShowLines="True" Width="797px">
        <HoverNodeStyle BackColor="#99FF99" BorderColor="#000066" BorderStyle="Double" 
            ForeColor="#660066" />
        <LeafNodeStyle BackColor="#00CC00" ForeColor="#660066" />
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    <br />
    <asp:TreeView ID="TreeView2" runat="server" Height="130px" NodeIndent="10" 
        NodeWrap="True" ShowCheckBoxes="Parent" ShowLines="True" Width="16px">
        <LevelStyles>
            <asp:TreeNodeStyle BackColor="#99FF66" Font-Underline="False" 
                HorizontalPadding="20px" />
        </LevelStyles>
        <HoverNodeStyle BackColor="#FF3399" ForeColor="#FFFF66" />
        <Nodes>
            <asp:TreeNode Text="New Node" Value="New Node">
                <asp:TreeNode Text="New Node" Value="New Node">
                    <asp:TreeNode Checked="True" ShowCheckBox="True" 
                        Text="New Node edfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfdf" Value="New Node">
                        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/image/002.jpg" Text="New Node" Value="New Node">
                        </asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="New Node" Value="New Node">
                <asp:TreeNode Text="New Node" Value="New Node">
                    <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
        </Nodes>
        <NodeStyle BackColor="#9C309C" ForeColor="#FFCC00" />
        <LeafNodeStyle BackColor="#FF3300" ForeColor="#660066" />
    </asp:TreeView>

    <h1>THIS IS MY USER CONTROL</h1>

    <sutexbca:tybca2 ID="my2016" runat="server" />
</asp:Content>
