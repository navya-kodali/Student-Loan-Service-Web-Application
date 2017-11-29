using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class passwordr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void OnRecovery(object sender, EventArgs e)
    {
        

        List<StudentInfor> myList = Application["ListofUsers"] as List<StudentInfor>;
        StudentInfor thisStudent = new StudentInfor();
        String password="";
        StudentInfor s = Session["thisuser"] as StudentInfor;

        for (int i = 0; i < myList.Count; i++)
        {
            if (tb2.Text == myList[i].EmailAdress)
            {
              password= myList[i].Password;
                
            }
        }
        if(password=="")
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('There is no mail address with the particular mentioned address.')", true);
        }
       
        String msgTo = tb2.Text;
                String msgSubject = "We have Recovered your Password!";
                String msgBody = "Dear Valued Student,<br/>" +
                    "\n" +
                "You are receiving this email beacause as you are requested to recover your password.<br/>" + "\n" +
                    "Your Current Password is:<br/>" + password
                + "Thank you.<br/>" + "\n" +
                    "Sun Educational Loan Service Team";
            
                MailMessage mailObj = new MailMessage();
                mailObj.Body = msgBody;
                mailObj.From = new MailAddress("navyakodaliwad@gmail.com", "Suncare Educatinal Loan Services");
                mailObj.To.Add(new MailAddress(msgTo));
                mailObj.Subject = msgSubject;
                mailObj.IsBodyHtml = true;
                SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
                SMTPClient.Host = "smtp.gmail.com";
                SMTPClient.Port = 587;
                SMTPClient.Credentials = new NetworkCredential("navyakodaliwad@gmail.com", "wad2016fall");
                SMTPClient.EnableSsl = true;
                try { SMTPClient.Send(mailObj); }
                catch (Exception ex) { tb2.Text = ex.ToString(); }
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thank you.An email has been sent to the address you provided.')", true);

            
        }
    


    public void OnLogin1_click(object sender, EventArgs e)
    {

        Server.Transfer("login.aspx", true);

    }
}



