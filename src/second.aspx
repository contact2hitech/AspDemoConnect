<%@ Page Language="VB" AutoEventWireup="false" CodeFile="second.aspx.vb" Inherits="second"  MasterPageFile ="~/MainMaster.master"%>

<%@ Register src="myfooter.ascx" tagname="myfooter" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
  <div>
   <center> 
        <asp:Label ID="Label1" runat="server" BackColor="#FFFFCC" ForeColor="#990000" 
            Font-Bold="True" Font-Size="Medium"></asp:Label>
    <br /><br />
       <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/image/001.JPG" 
           Width="150px" />
    <br /><br />
    </center>
    </div>
           <p>
        <textarea id="TextArea1" name="S1">
        
Partial Class second
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("Name") = Nothing Then
            Response.Write("PLEASE ENTER YOUR NAME  " & "<a href=""DemoQuery.aspx"">Click here to go back </a>" & "<br/>")
        Else
            Dim str As String
            Dim bol As Boolean
            Dim age As String
            str = Request.QueryString("Name")

            bol = Request.QueryString("Gen")
            If bol = True Then
                Image1.ImageUrl = "~/im2/3.jpg"
            Else
                Image1.ImageUrl = "~/im2/4.jpg"

            End If

            Label1.Text = "WELCOME " & str & " to my SITE. Enjoy Surfing: you are of  Age years " & Request.QueryString("Age")

        End If
        
       
    End Sub
End Class

        </textarea></p>
        
    <uc1:myfooter ID="myfooter1" runat="server" />
    <br />
</asp:Content>

