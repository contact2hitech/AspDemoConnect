using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class TestingTheme : System.Web.UI.Page
{
    string thm;
    protected void Page_Load(object sender, EventArgs e)
    {
       Response.Redirect("../Theme_Project");
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        
        //thm = (string)Session["Theme123"];
        //if (thm != null)
        //{
        //    Page.Theme = thm;
        //    DropDownList2.Text = thm;
        //}
        //else
        //{
        //    Session["Theme123"] = DropDownList2.Text;
        //    Page.Theme = "Summer";
        //}

    }
    
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Session["Theme123"] = DropDownList2.Text;
        //Server.Transfer(Request.FilePath);       
    }
}
