<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>



<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application["ListofUsers"] = new List<StudentInfor>();
        // Code that runs on application startup
        List<StudentInfor> listofUsers = Application["ListofUsers"] as List<StudentInfor>;
        SqlConnection conn = new SqlConnection("Data Source=dcm.uhcl.edu;Initial catalog=c432016fa02kodalin2;User ID=kodalin2;Password=1457133; Asynchronous Processing=true");
        String query = "Select * from kodalin2";
        SqlCommand cmd = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            SqlDataReader reader1 = cmd.ExecuteReader();
            if (reader1.HasRows)
            {
                while (reader1.Read())
                {
                    String value1 = reader1["certifiedchecked"].ToString();
                    bool value = value1 == "1";
                    StudentInfor astudent = new StudentInfor();
                    astudent.UserName = (String)reader1["username"];
                    astudent.Password = reader1["password"].ToString();
                    astudent.CertifiedChecked = value;
                    astudent.SocialSecurityNumber = reader1["socialsecuritynumber"].ToString();
                    astudent.FullName = reader1["fullName"].ToString();
                    astudent.DateOfBirth = reader1["dateOfBirth"].ToString();
                    astudent.EmailAdress = (String)reader1["emailAddress"];
                    astudent.SecurityQuestion = reader1["securityQuestion"].ToString();
                    astudent.SecurityQuestionAnswer = reader1["securityQuestionAnswer"].ToString();

                    astudent.AccountNumber = (int)reader1["accountNumber"];

                    astudent.LastUpdatedDate = reader1["lastUpdatedDate"].ToString();
                    astudent.CurrentBalance = (float)reader1.GetDouble(15);
                    astudent.LastUpdatedDate = reader1["lastUpdatedDate"].ToString();
                    astudent.RegularMonthlyPaymentAmount = (float)reader1.GetDouble(16);
                    astudent.AmountSatisfiedByExtraPayment = (float)reader1.GetDouble(17);
                    astudent.PastDueAmount = Convert.ToSingle(reader1["pastDueAmount"]);
                    astudent.CurrentAmountDue = Convert.ToSingle(reader1["currentAmountDue"]);


                    astudent.CurrentStatementDueDate =reader1["currentStatementDueDate"].ToString();
                    listofUsers.Add(astudent);
                }
            }

            Application["ListofUsers"] = listofUsers;

        }

        finally
        {
            conn.Close();
        }
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
