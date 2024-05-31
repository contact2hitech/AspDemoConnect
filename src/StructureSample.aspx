<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StructureSample.aspx.vb" Inherits="StructureSample" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SAMPLE STYLE Page</title>
    <style type="text/css">
        .style1
        {
            height: 61px;
        }
        .style2
        {
            height: 61px;
            width: 132px;
        }
        .style3
        {
            width: 132px;
        }
        .style4
        {
            height: 61px;
            width: 639px;
        }
        .style5
        {
            width: 639px;
        }
        .style6
        {
            width: 132px;
            height: 324px;
        }
        .style7
        {
            width: 639px;
            height: 324px;
        }
        .style8
        {
            height: 324px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: thin dotted #00FFFF; width:100%; height:500px; background-color:#FFFFCC; font-family: Verdana; font-size: x-large; font-weight: bold;">
        <table style="width:100%; height:100%" >
                <tr style="background-color:#FFCCFF">
                    <td class="style2">
                    </td>
                    <td class="style4">
                    </td>
                    <td class="style1">
                    </td>
                    
                </tr>
                <tr style="background-color: #99FFCC">
                    <td class="style6">
                        <asp:AdRotator ID="AdRotator1" runat="server" 
                            AdvertisementFile="~/Advertisement.xml" Height="500px" Width="125px" />
                    </td>
                    <td class="style7">
                    </td>
                    <td class="style8">
                        <asp:AdRotator ID="AdRotator2" runat="server" 
                            AdvertisementFile="~/Advertisement.xml" Height="500px" Width="125px" />
                    </td>
                    
                </tr>
                <tr style="background-color: #99FF99">
                    <td class="style3">
                    </td>
                    <td class="style5">
                    </td>
                    <td>
                    </td>
                    
                </tr>
        </table>
    </div>
    </form>
</body>
</html>
