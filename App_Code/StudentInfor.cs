using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class StudentInfor
{
    String userName;
    String password;
    String ConfirmPassword;
    bool certifiedchecked;
    String socialSecurityNumber;
    String fullName;
    String dateOfBirth;
    String address;
    String emailAddress;
    String securityQuestion;
    String securityQuestionAnswer;
    int accountNumber;
    String lastUpdatedDate;
    float currentBalance;
    float regularMonthlyPaymentAmount;
    float amountSatisfiedByExtraPayment;
    float pastDueAmount;
    float currentAmountDue;
    String currentStatementDueDate;


    public String UserName
    {
        get
        { return userName; }
        set {userName= value; }
    }
    public String Password
    {
        get
        { return password; }
        set
        { password = value; }
    }
    public String confirmPassword
    {
        get
        { return ConfirmPassword; }
        set
        { ConfirmPassword = value; }
    }

    public String SocialSecurityNumber
    {
        get
        {
            return socialSecurityNumber;
        }
        set { socialSecurityNumber = value; }
    }
    
    public String FullName
    {
        get { return fullName; }
        set { fullName = value; }

        }
    public String DateOfBirth
    {
        get { return dateOfBirth;}
        set { dateOfBirth = value; }
    }
    public String Address
    {
        get { return address; }
        set { address = value; }
    }
    public String EmailAdress
    { get { return emailAddress; }
        set { emailAddress = value; }
    }
    public String SecurityQuestion
    {
        get { return securityQuestion; }
        set { securityQuestion = value; }
    }
    public String SecurityQuestionAnswer
    {
        get { return securityQuestionAnswer; }
        set { securityQuestionAnswer = value; }
    }
    public String LastUpdatedDate
    {
        get { return lastUpdatedDate; }
        set { lastUpdatedDate = value; }
    }
    public String CurrentStatementDueDate
    {
        get { return currentStatementDueDate; }
        set { currentStatementDueDate = value; }
    }
    public bool CertifiedChecked
    {
        get { return certifiedchecked; }
        set { certifiedchecked = value; }

    }
    public int AccountNumber
    {
        
    get { return accountNumber; }
        set { accountNumber = value; }
    }
    public float CurrentBalance
    {
        get { return currentBalance; }
        set { currentBalance = value; }
    }
    public float RegularMonthlyPaymentAmount
    {
        get { return regularMonthlyPaymentAmount; }
        set { regularMonthlyPaymentAmount = value; }
    }
    public float AmountSatisfiedByExtraPayment
    {
        get { return amountSatisfiedByExtraPayment; }
        set { amountSatisfiedByExtraPayment = value; }
    }
    public float PastDueAmount
    {
        get { return pastDueAmount; }
        set { pastDueAmount = value; }
    }
    public float CurrentAmountDue
    {
        get { return currentAmountDue; }
        set { currentAmountDue = value; }
    }


}


