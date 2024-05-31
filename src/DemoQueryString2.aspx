<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="DemoQueryString2.aspx.vb" Inherits="Default3" title="Query String Demo Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;HELLO FROM DEMOQUERY2 PAGE. THIS WILL SHOW RECORDS OF STUDENTS OF PERTICULAR 
        DEPT YOU HAVE SELETED FROM <a href="DemoQueryString.aspx">DemoQueryString.aspx</a></p>
    <p>
        <asp:Label ID="lblInfo" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
            GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                NO RECORSD TO DISPLAY.<br /> BECAUSE OF NO QUERY STRING
            </EmptyDataTemplate>
            <FooterStyle BackColor="Tan" />
            <Columns>
                <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
                <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
                <asp:BoundField DataField="salary" HeaderText="salary" 
                    SortExpression="salary" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            </Columns>
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:constrsql %>" 
            SelectCommand="SELECT * FROM [employee] WHERE ([did] = @did)">
            <SelectParameters>
                <asp:QueryStringParameter Name="did" QueryStringField="dept" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <textarea style="height: 494px; width: 532px">
Imports System.Data
Partial Class Default3
    Inherits System.Web.UI.Page
    Dim cn As New myconnection
    Dim dt As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim str, qstr As String
        str = Server.UrlDecode(Request.QueryString("dept"))
        Response.Write("YOU HAVE SELECTED: " & str)
        If str = "" Then
            lblInfo.Text = "Please go to previous page..."
        Else
            lblInfo.Text = "WELCOME DEAR " & Session("Uname") & " how are you. Is your Contact no " & Session("Umob")
            dt = cn.getdata("select * from employee where did=" & str)
            'dt = cn.getdata("select * from employee")
            GridView1.DataSource = dt
            GridView1.DataBind()

        End If
        'MsgBox(str)

        ' WRITE CODE FOR DISPLAYING RECORDS OF PARTICLUAR DEPT .
        'Dim str, qstr As String
        'str = Request.QueryString("dept")
        'qstr = "Select * from employee where did=" & str
        'MsgBox(qstr)
        ' coding for displaying records in gridview


    End Sub
End Class

    </textarea>
</asp:Content>

