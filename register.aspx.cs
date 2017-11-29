using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
public partial class register : System.Web.UI.Page
{
   

    protected void LinkButton1_Click(object sender, System.EventArgs e)
    {
        Server.Transfer("Default.aspx", true);
    }
    protected void LinkButton2_Click(object sender, System.EventArgs e)
    {
        Server.Transfer("login.aspx", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["thisuser"] != null)
        {
            List<StudentInfor> myList = Application["ListofUsers"] as List<StudentInfor>;
            StudentInfor thisStudent = new StudentInfor();

        }
        if (!this.IsPostBack)
        {
            for (int month = 1; month <= 12; month++)
            {
                string monthName = DateTimeFormatInfo.CurrentInfo.GetMonthName(month);
                ddlMonthNames.Items.Add(new ListItem(monthName));

            }
        }
        else
        {
            List<StudentInfor> myList = Application["ListofUsers"] as List<StudentInfor>;
            StudentInfor thisStudent = new StudentInfor();
            for (int i = 0; i < myList.Count; i++)
            {
                if (Tb2.Text == myList[i].SocialSecurityNumber)
                {

                   this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert","alert(' " + Tb2.Text +" Number already exists.Please go to login page')",true);
                   
                }
            }
        }
    }
      

       
   

public void OnConfirm(object sender, EventArgs e)
    {
        List<StudentInfor> myList = Application["ListofUsers"] as List<StudentInfor>;
        StudentInfor thisStudent = new StudentInfor();
        thisStudent.UserName = Tb5.Text;
        thisStudent.Password = Tb6.Text;
        thisStudent.confirmPassword = Tb7.Text;
         thisStudent.CertifiedChecked = cb1.Checked;

        thisStudent.SocialSecurityNumber = Tb2.Text;
        thisStudent.FullName = Tb1.Text;
         String date1= ddlMonthNames.Text;
        String date2 = Date1.Text;
        String date3 = Year.Text;
        String dob = date1 + date2 + date3;
        thisStudent.DateOfBirth = dob;
        thisStudent.Address = Tb4.Text;

        thisStudent.EmailAdress = Tb8.Text;
        thisStudent.SecurityQuestion =security.Text;
        thisStudent.SecurityQuestionAnswer = Tb10.Text;
        
        Random generator = new Random();
        thisStudent.AccountNumber = generator.Next(100000, 1000000);

        for (int i = 0; i < myList.Count; i++)
        {
            if (Tb2.Text == myList[i].SocialSecurityNumber)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' " + Tb2.Text + " Number already exists.Please go to login page')", true);
                  break;
            }
        }

        if (cb1.Checked == true)
        {

            //StudentInfor s = Session["thisuser"] as StudentInfor;
            

            String msgTo = Tb8.Text;
            String student = Tb1.Text;
            String msgSubject = "New Registration Notification";
            String msgBody = "Dear " + student + "," + "<br/>" +
                "Thank You for registering with us.<br/>" + "You can now accessyou loan account at login page http://dcm.uhcl.edu/c432016fa02kodalin2/. <br/>" + "\n" +
            " In the meantime,please share the word about Suncare Educational Loan Service with your friends and neighbours !SunCareEducational loan Service is <br/>" +
            "open to all eligible college applicants throughout the United States " + "<br/>" + "\n" +
             "Thank you again for your registartion.If you have any questions,please contact us at http://dcm.uhcl.edu/c432016fa02kodalin2/contact.aspx ." + "<br/>" +
            "With Best wishes" + "<br/>" +
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
            catch (Exception ex)
            { Label1.Text = ex.ToString(); }

            myList.Add(thisStudent);
            SqlConnection conn1 = new SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432016fa02kodalin2;Persist Security Info=True;User ID=kodalin2;Password=1457133");
            String thedata = "INSERT INTO kodalin2(userName,password,certifiedChecked,confirmpassword,socialSecurityNumber,fullName,dateofBirth,emailAddress,address,securityQuestion,securityQuestionAnswer,accountNumber) VALUES('" + thisStudent.UserName+ "','" +thisStudent.Password+ "','" + thisStudent.CertifiedChecked + "', '" + thisStudent.confirmPassword+" ','" +thisStudent.SocialSecurityNumber+ "', '" +thisStudent.FullName+ "','" +thisStudent.DateOfBirth+ "','" +thisStudent.EmailAdress+ "','"+thisStudent.Address+ " ',' "+thisStudent.SecurityQuestion+ " ', ' "+thisStudent.SecurityQuestionAnswer+ " ',' "+thisStudent.AccountNumber+" ')";
            //String thedata = "INSERT INTO kodalin2(userName,password,confirmpassword,certifiedchecked,socialSecurityNumber,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer) VALUES('" + Tb5.Text + "' '" + Tb6.Text + "' '" + cb1.Checked + "' '" + Tb2.Text + "' '" + Tb1.Text + "' '" + Date.Text + "' '" + Tb4.Text + "' '" + Tb8.Text + "''" + security.Text + "''" + Tb10.Text + "')";
            SqlCommand cmd1 = new SqlCommand(thedata, conn1);
            try
            {
                conn1.Open();
                cmd1.ExecuteNonQuery();
            }
            
            finally
            {
                conn1.Close();
            }

            Application["ListofUsers"] = myList;
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thank you for submitting for registration.You can now login by clicking the Login link at the top right hand side of this page.An email notification has also been sent to the email address you provided during registration.')", true);
           
        }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Accept the certifying Statement by checking the box at Top Left Hand Side.')",true);
            }
        
    }

}

