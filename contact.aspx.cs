using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["thisuser"] != null)

        {
            LinkButton2.Text = "Logout";


        }
    }
    protected void Page_Load1(object sender, EventArgs e)
    {
        if (Session["thisuser"] != null)
        {
            TextBox1.Enabled = true;
            Button1.Enabled = true;
        }
        else
        {
            TextBox1.Enabled = false;
            Button1.Enabled = false;
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
            LinkButton2.Text = "logout";
            Session.Abandon();
        }
        else
        {
            Server.Transfer("login.aspx", true);
        }
    }
    protected void Button1_load(object sender, System.EventArgs e)
    {
        if (String.IsNullOrEmpty(TextBox1.Text)) 
        {
            string script = "<script type=\"text/javascript\">alert('There is No message to send .Please type the message in the box and click send Message button'); </script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
           
        }
        else
        {
            StudentInfor s = Session["thisuser"] as StudentInfor;
            
            String msgTo =s.EmailAdress;
            String msgSubject = "We have Received your Message!";
            String msgBody = "Dear Valued Student <br/>," + "\n" +
            "You are receiving this email beacause as you contacted us with a question and /Or as concern. <br/>" + "\n" +
                "Our Support staff will respond within the next 48 hours.<br/>" + "\n" +
            "Thank you.<br/>" + "\n" +
                "Sun Educational Loan Service Team<br/>";
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
            catch (Exception ex)
            { Label1.Text = ex.ToString(); }
            string script = "<script type=\"text/javascript\">alert('Thank you an email notification has also been sent to the address we have in our file'); </script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
        }

    }

    }

