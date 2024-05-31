<%@ Page Language="VB" MasterPageFile="~/MainMaster.master" AutoEventWireup="false" CodeFile="zContact.aspx.vb" Inherits="Default2" title="Contact Page" %>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

       <marquee>        
        	<h2>PERFORM YOUR WORK .....!!!!</h2></marquee>
        	
            <p> <a href="#" target="_parent">FREE ASP.NET SAMPLES</a> are provided by <a href="#" target="_parent">Hitesh Patel</a> for everyone. Feel free to download, edit and apply these Examples for your personal use. 
            </p>
            
          <div class="cleaner_h20"></div>
            
            <div class="image_fl">
	            <img src="images/profile.jpg" alt="image" style="width: 200px;height:250px" />
	            <h3>Asst. Prof. Hitesh Patel</h3>
            </div>
            
            <div class="section_w250 float_r">
            
            	<ul class="list_01">
            	      <li>Subjects Taken</li>
                   	  <li>ASP.NET</li>
                      <li>VB.NET</li>
                      <li>Intro. to Computers </li>
                      <li>PC Software</li>
                      <li>Software Engineering</li>
                      <li>Information System</li>
                      <li>.....</li>
                      </ul>
                      <li>Upload Your Demos Below</li>
              
            
            </div>
        
        	<div class="cleaner">
            </div>
             <asp:FileUpload ID="FileUpload1" runat="server" />
           <asp:Button ID="btnTestDemo" runat="server" Text="Upload Your Demo" />
          <br /> <asp:Label ID="lblStatusUpload" runat="server" BackColor="#FFFF66" ForeColor="#FF0066" 
                    Text="" Font-Bold="True"></asp:Label>
        

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Panel ID="Panel1" runat="server">
</asp:Panel>
        
            

</asp:Content>
