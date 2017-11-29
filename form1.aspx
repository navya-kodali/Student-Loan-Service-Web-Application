<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>form</title>
    <link rel="stylesheet" type="text/css" href="form.css"/>
    <style>
     table {
    font-family: arial;
    border-collapse: collapse;
    width: 100%;
}


td {
    border: 1px solid #e60000;
    text-align: left;
    padding: 8px;
}
     </style>
</head>
<body>
      <form id="form2" runat="server">
            <header>
                    <div id="projectImage">
                         <img src="images/1.jpg" style="height:100%;width:100%;"/>
                    </div>
                <div id="projectBanner">
                    <h1 style="font-style: italic">"Sun Educational Loan Services"</h1>
                    <h5>Lower the  Interest Saves Your Money</h5>
                </div>
                    <br />
                    <br />
           </header>
          <br />
                 <p>&nbsp</p>
            <br />
            <br />
            <br />
            
             <div id="main">
                <span style="float:left;">
                    <asp:LinkButton ID="LinkButton1"
                    Text="Home|"
                    Font-Names="TimesNewRoman"
                    Font-Size="16pt"
                    OnClick="LinkButton1_Click"
                    runat="server" />
               Forms
           </span>
             
                  <span style="float: right;">
                          <asp:LinkButton ID="LinkButton2"
                          Text="Login"
                          Font-Names="TimesNewRoman"
                          Font-Size="16pt"
                          OnClick="LinkButton2_Click"
                          runat="server" />
                  </span>
             
             </div>
          <p>&nbsp</p>
        <table>
  <tr>
    <td><b>Sun Education Account creation Authorization</b></td>
    <td><a href="pdf1.pdf"><img src="images/pdflogo.png" /></a></td> 
  </tr>
  <tr>
    <td><b>Federal Direct Consolidation Loan Application and Promissory Note</b></td>
    <td><a href="https://static.studentloans.gov/images/ApplicationAndPromissoryNote.pdf"><img src="images/pdflogo.png" /></a></td> 
   
  </tr>
  <tr>
    <td><b>Direct Consolidation Loan Applications </b> </td>
    <td><a href="https://studentloans.gov/myDirectLoan/consolidationPaper.action"><img src="images/pdflogo.png" /></a></td> 
    
  </tr>
         <tr>
    <td><b>Public Service Loan Forgiveness(PSLF)</b></td>
    <td><a href="https://studentaid.ed.gov/sa/sites/default/files/public-service-employment-certification-form.pdf"><img src="images/pdflogo.png" /></a></td> 
      </tr>
</table>
          </form>
        </body>
    </html>

