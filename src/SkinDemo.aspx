<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SkinDemo.aspx.vb" Inherits="SkinDemo" MasterPageFile="~/MainMaster.master" StyleSheetTheme="TY2"   %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       
        
            <h2>Welcome to my Website. This website contains Examples for ASP.Net. You can 
                find all the Demos for different controls and functionality of ASP.Net</h2>
            
            <p> <a href="#/page/1" target="_parent">Free CSS Templates</a> are provided by <a href="#" target="_parent">ASP.NET SAMPLES</a> 
                for everyone. Feel free to download, edit used in this template. Nam ut libero at lacus feugiat tincidunt vitae sed ipsum.<asp:Button 
                    ID="Button1" runat="server" Text="Button" />
                <asp:Button ID="Button2" runat="server" Text="Button" />
                     </p>
            
          <div class="cleaner_h20"></div>
            
            <div class="image_fl">
	            <img src="images/templatemo_images01.jpg" alt="image" />
            </div>
            
            <div class="section_w250 float_r">
            
            	<ul class="list_01">
                   	  <li>For info </li>
                      <li>For more Info</li>
              </ul>
            
            </div>
        
            
        <asp:Button ID="Button3" runat="server" Text="Button" SkinID="btnA1" 
            Height="41px" Width="197px" />
        <asp:Button ID="Button4" runat="server" Text="Button" />
        <asp:Button ID="Button5" runat="server" Text="Button" SkinID="btnB1" />
    
        <asp:Calendar ID="Calendar1" runat="server" CssClass="mybg" ></asp:Calendar>
    
        <asp:Calendar ID="Calendar2" runat="server" CssClass="invertbg"></asp:Calendar>
    
        <p style="height: 192px">
            &nbsp;</p>
            <h5 class="bold" >TESTING CSS</h5>
            <h1>this</h1>
            <h2 class="mybg">IS</h2>
            <h3>dEMO</h3>
            <h4 class="myowntxt">OF</h4>
            <h5>CSS</h5>
            <h6>and theme</h6>


</asp:Content>
