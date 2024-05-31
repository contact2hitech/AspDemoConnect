<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ImageMapDemo.aspx.vb" Inherits="ImageMapDemo" MasterPageFile="~/MainMaster.master" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       
        
     <div style="width:100% ;height:100%">
    
         <h1>THIS IS DEMO FOR STANDARD WEB SERVER CONTROLS</h1>
    <h2>image map control with circle hotspot</h2>
        <asp:ImageMap ID="ImageMap1" runat="server" Height="500px" Width="500px" 
            ImageUrl="~/image/simley.jpeg">
            <asp:CircleHotSpot AlternateText="i am smiley" 
                NavigateUrl="~/showsessiondata.aspx" Radius="200" X="262" Y="251" />
            
        </asp:ImageMap>

    <h2>image map control with RECTANGLE hotspot</h2>
        <asp:ImageMap ID="ImageMap2" runat="server" 
            ImageUrl="~/image/original-3913986-1.jpg">
            <asp:RectangleHotSpot Bottom="152" Left="107" AlternateText="HEELO I AM RECTANGLE HOTSPOT" 
                NavigateUrl="~/listcontroldemo.aspx" Right="240" Top="75" />
        </asp:ImageMap>
        <h2>image map control with POLYGON hotspot</h2>
        <asp:ImageMap ID="ImageMap3" runat="server" 
            ImageUrl="~/image/polygonimagemap.jpg">
            <asp:PolygonHotSpot Coordinates="238,67,300,50,346,86,339,137,279,156,226,121" 
                NavigateUrl="~/CalenderDemo.aspx" AlternateText="I AM A POLYGON"/>

            <asp:PolygonHotSpot AlternateText="I am TRIANGLE" 
                Coordinates="470,122,535,160,466,191" NavigateUrl="~/AssignmentbyStudent.aspx" 
                Target="_blank" />

        </asp:ImageMap>
   
        
    </div>
        
        

</asp:Content>
