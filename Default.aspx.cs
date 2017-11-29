using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["thisuser"] != null)

        {
            login.Text = "logout";

        }
    }
    protected void login_click(object sender, EventArgs e)
    {
        if (Session["thisuser"] != null)

        {
            
            Session.Abandon();

        }
        else
        {
            Server.Transfer("login.aspx");
        }
    }

    protected void Ads_AdCreated(object sender, AdCreatedEventArgs e)
    {

    }
}