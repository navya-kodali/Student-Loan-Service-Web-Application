using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["thisuser"] != null)
        {
            LinkButton2.Text = "Logout";

            if (!IsPostBack)
            {

                StudentInfor s = Session["thisuser"] as StudentInfor;
                M1.Text = s.AccountNumber.ToString();
                M2.Text = s.FullName;
                M3.Text = s.LastUpdatedDate;
                curBal.Text = s.CurrentBalance.ToString();
                Last.Text = s.LastUpdatedDate;

                 MonthlyPayment.Text = s.RegularMonthlyPaymentAmount.ToString();
                ExtraPayment.Text = s.AmountSatisfiedByExtraPayment.ToString();
                PastDue.Text = s.PastDueAmount.ToString();
                CurrentAmount.Text = s.CurrentAmountDue.ToString();
                due.Text = s.CurrentStatementDueDate;
                
            }

            else
            {
                M1.Text = "";
                M2.Text = "0";
                M3.Text = "N/A";
                curBal.Text = "0.0";
                Last.Text = "0.0";
                MonthlyPayment.Text = "0.0";
                ExtraPayment.Text = "0.0";
                PastDue.Text = "0.0";
                CurrentAmount.Text = "0.0";
                due.Text = "N/A";

            }
        }

        else
        {
            Server.Transfer("login.aspx");
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please login with your user id and password.')", true);
        }
        }
    

    


    protected void LinkButton1_Click(object sender, System.EventArgs e)
    {
        Server.Transfer("Default.aspx", true);

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Are Now Logged Out')", true);
        Session.Abandon();



    }
}