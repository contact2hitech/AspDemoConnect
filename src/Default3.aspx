<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <h3>
        Welcome to my Website.
        THIS PAGE SHOWS PHP USERNAME AND PASSWORD

                <asp:GridView ID="GridView1" runat="server" 
            DataSourceID="SqlDataSource1" EnableModelValidation="True">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </h3>
                <h1>THIS PAGE IS DEPRECIATED</h1>
                   
</asp:Content>



