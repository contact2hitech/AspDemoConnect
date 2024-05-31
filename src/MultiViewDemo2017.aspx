<%@ Page Title="" Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="MultiViewDemo2017.aspx.vb" Inherits="MultiViewDemo2017" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <h1>This is Demo of MultiView Control (Container Control)</h1>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        I AM PAGE 1<asp:Button ID="Button4" runat="server" Text="NEXT" />
    </asp:View>
    <asp:View ID="View2" runat="server">
        I AM PAGE 2<asp:Button ID="Button5" runat="server" Text="NEXT" />
    </asp:View>
    <asp:View ID="View3" runat="server">
        I AM {PAGE 3<asp:Button ID="Button6" runat="server" Text="NEXT" />
    </asp:View>
    <asp:View ID="View4" runat="server">
        I AM PAGE 4<asp:Button ID="Button7" runat="server" Text="FIRST" />
    </asp:View>
    </asp:MultiView>


    <asp:MultiView ID="mv2" runat="server" ActiveViewIndex="5">
        <asp:View ID="View5" runat="server">
        <h1>PLEASE TEST YOUR KNOWLEDGE</h1>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

            <asp:Button ID="Button8" runat="server" Text="Next" />

        </asp:View>
        <asp:View ID="View6" runat="server">
       <h2>HELLO YOU HAVE DONE IT ....!<asp:Button ID="Button9" runat="server" 
               Text="Prev" />
            </h2>
        </asp:View>
        <asp:View ID="View7" runat="server">
        </asp:View>
        <asp:View ID="View8" runat="server">
        </asp:View>
        <asp:View ID="View9" runat="server">
        </asp:View>
        <asp:View ID="View10" runat="server">
            FINISH
        </asp:View>

    </asp:MultiView>
    </asp:Content>


