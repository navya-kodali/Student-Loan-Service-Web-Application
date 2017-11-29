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
            LinkButton2.Text = "Logout";


        }
    }


           protected void LinkButton1_Click(object sender, System.EventArgs e)
    {
        Server.Transfer("Default.aspx", true);
    }
    protected void LinkButton2_Click(object sender, System.EventArgs e)
    {
        if (Session["thisuser"] != null)

        {
            Session.Abandon();
        }
        else
        {
            Server.Transfer("login.aspx", true);
        }
    }
}
