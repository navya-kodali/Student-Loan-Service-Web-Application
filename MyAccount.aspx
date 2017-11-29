<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MyAccount</title>
   <link rel="stylesheet" type="text/css" href="login.css"/>
</head>

<body>
    <form id="form2" runat="server">
             <header>
                    <div id="projectImage">
                         <img src="images/1.jpg" style="height:100%;width:100%;" />
                    </div>
                <div id="projectBanner">
                    <h1 style="font-style: italic">"Sun Educational Loan Services"</h1>
                    <h5>Lower the  Interest Saves Your Money</h5>
                </div>
           </header>
          <br />
   
        
        <div id="main">
                <span style="float:left;">
                     <asp:LinkButton ID="LinkButton1"
                    Text="Home|"
                         Font-Names="TimesNewRoman"
                    Font-Size="18pt"
                     OnClick="LinkButton1_Click"
                    runat="server" />
             MyAccount
           </span>
             <span style="float: right;">
                <asp:LinkButton ID="LinkButton2"
                    Text="Logout"
                    Font-Names="TimesNewRoman"
                    Font-Size="16pt"
                    runat="server" OnClick="logout_Click" />
            </span>
            </div>
             <p>&nbsp</p>
            <p>&nbsp</p>
        <div style="margin-left: auto; margin-right: auto; text-align: center; color:firebrick">
            <asp:Label runat="server" Text="Your Loan Account Details" Font-Bold="true" Font-Size="XX-Large" Font-Names="TimesNewRoman" />
          </div>
        <hr />
        <asp:Label runat="server" Text="Account Number:"  Font-Size="X-Large" Font-Bold="true" ForeColor="PaleVioletRed"></asp:Label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<asp:Label runat="server" Text="" ID="M1"  Font-Size="X-Large" Font-Bold="true" ForeColor="DarkViolet"></asp:Label><br /><br />
        <asp:Label runat="server" Text="Full Name:"  Font-Size="X-Large" Font-Bold="true" ForeColor="PaleVioletRed"></asp:Label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <asp:Label runat="server" Text="" ID="M2"  Font-Size="X-Large" Font-Bold="true" ForeColor="DarkViolet"></asp:Label><br /><br />
        <asp:Label runat="server" Text="Last Updated Date:"  Font-Size="X-Large" Font-Bold="true" ForeColor="PaleVioletRed"></asp:Label>  &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<asp:Label runat="server" Text="" ID="M3" Font-Size="X-Large" Font-Bold="true" ForeColor="DarkViolet"></asp:Label><br /><br />
        <hr />

        <asp:Table Width="100%" BorderColor="Purple" BorderStyle="Double" Height="100%" runat="server" GridLines="Both" HorizontalAlign="Center" >
        <asp:TableRow>
            <asp:TableCell runat="server" Text="Current Balance"  Font-Size="X-Large" BackColor="SteelBlue" ></asp:TableCell>
            <asp:TableCell runat="server" ID="curBal" Font-Size="X-Large" BackColor="SteelBlue" ></asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell runat="server" Text="Last Updated Date"   Font-Size="X-Large" BackColor="SlateGray"></asp:TableCell>
            <asp:TableCell runat="server" ID="Last"  Font-Size="X-Large"   BackColor="SlateGray"></asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell runat="server" Text="Regular Monthly Payment Amount" Font-Size="X-Large" BackColor="SteelBlue" ></asp:TableCell>
            <asp:TableCell runat="server"  ID="MonthlyPayment" Font-Size="X-Large"  BackColor="SteelBlue"></asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell runat="server" Text="Amount Satisfied by Extra Payment" Font-Size="X-Large" BackColor="SlateGray" ></asp:TableCell>
            <asp:TableCell runat="server" ID="ExtraPayment" Font-Size="X-Large" BackColor="SlateGray"></asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell runat="server" Text="Past Due Amount(if applicable)"   Font-Size="X-Large" BackColor="SteelBlue"></asp:TableCell>
            <asp:TableCell runat="server"  ID="PastDue"  Font-Size="X-Large"   BackColor="SteelBlue"></asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell runat="server" Text="Current Amount Due" Font-Size="X-Large" Font-Bold="true" BackColor="SlateGray"></asp:TableCell>
            <asp:TableCell runat="server" ID="CurrentAmount" Font-Size="X-Large" Font-Bold="true"  BackColor="SlateGray"></asp:TableCell>
        </asp:TableRow>
        </asp:Table>
        <div style="margin-left: auto; margin-right: auto; color:palevioletred">
        
             <asp:Label runat="server" Text="Current Statement Due Date:"   Font-Size="XX-Large" Font-Bold="true"></asp:Label> &nbsp &nbsp &nbsp &nbsp 
            <asp:Label runat="server"   ID="due" Font-Size="XX-Large" Font-Bold="true" ForeColor="DarkViolet"></asp:Label><br />
       </div>
           <hr />

    </form>
    </body> 
    </html>
