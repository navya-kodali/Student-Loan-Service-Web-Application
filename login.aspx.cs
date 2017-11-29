using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
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
        Response.Redirect("Default.aspx", true);
    }
    protected void Login_Click(object sender, System.EventArgs e)
    {
        }
    protected void LinkButtonR_Click(object sender, System.EventArgs e)
    {
        Server.Transfer("register.aspx", true);
    }
    protected void LinkButtonP_Click(object sender, System.EventArgs e)
    {
        Server.Transfer("passwordr.aspx", true);
    }
    public void OnConfirm(object sender, EventArgs e)
    {
        List<StudentInfor> myList = (List<StudentInfor>)
                                   Application["ListofUsers"];
        
        int valid_account = 0;

        for (int i = 0; i < myList.Count; i++)
        {
            if ((Tb1.Text.Trim() == myList[i].EmailAdress) && (Tb2.Text.Trim()) == myList[i].Password)
            {
                valid_account = 1;
                Session["thisuser"] = (StudentInfor)myList[i];
                break;
            }
        }
        if (valid_account == 1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You are now Logged In.')", true);
            Response.Redirect("Myaccount.aspx");
        }
        else
        {
            string script = "<script type=\"text/javascript\">alert('It appears this user is not in our database .Please click Register Now Link'); window.location.replace('MyAccount.aspx'); </script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }
       
    }
        
    
    
}