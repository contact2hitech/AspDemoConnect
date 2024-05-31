<%@ Page Language="VB" MasterPageFile="~/MainMaster.master"   AutoEventWireup="false" CodeFile="AdrotatorDemo.aspx.vb" Inherits="AdrotatorDemo" Title="AdRotator Demo" %>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       
        
        	<h2>Welcome to this Example of AdRotator Control.This page shows images with the help 
                of Adrotator.</h2>
            
            <p> You can find all the Demos for different controls and functionality of ASP.Net 
                in Examples Section. Click here for <a href="ListofFiles.aspx" target="_parent">More ASP.NET SAMPLES...</a><asp:Button 
                    ID="Button1" runat="server" Text="Button" />
                <asp:Button ID="Button2" runat="server" Text="Button" />
                     </p>
<p> &nbsp;</p>
            
            <div class="image_fl">
	        <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/MyXML.xml" BorderStyle="Groove" Height="100px" Target="_blank" Width="525px" />
	        <asp:AdRotator ID="AdRotator5" runat="server" AdvertisementFile="~/Advertisement.xml" 
                    BorderStyle="Dashed" Height="100px" Width="525px" 
                    KeywordFilter="General" />
	        <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/MyXML.xml" BorderStyle="Groove" Height="100px" Target="_blank" Width="525px" />
            </div>
            
            <div class="section_w250 float_r">
            
            
            </div>
        
        	<div class="cleaner"></div>
        
        

</asp:Content>

