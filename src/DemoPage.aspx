<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DemoPage.aspx.vb" Inherits="DemoPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="sno" 
            DataSourceID="AccessDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" 
                    SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="desc" HeaderText="desc" SortExpression="desc" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" DataFile="~/App_Data/MyWeb.mdb" 
            DeleteCommand="DELETE FROM [WebMaster] WHERE (([sno] = ?) OR ([sno] IS NULL AND ? IS NULL)) AND (([name] = ?) OR ([name] IS NULL AND ? IS NULL)) AND (([desc] = ?) OR ([desc] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [WebMaster] ([sno], [name], [desc]) VALUES (?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [WebMaster]" 
            UpdateCommand="UPDATE [WebMaster] SET [name] = ?, [desc] = ? WHERE (([sno] = ?) OR ([sno] IS NULL AND ? IS NULL)) AND (([name] = ?) OR ([name] IS NULL AND ? IS NULL)) AND (([desc] = ?) OR ([desc] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_sno" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_desc" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="desc" Type="String" />
                <asp:Parameter Name="original_sno" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_desc" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="sno" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="desc" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
