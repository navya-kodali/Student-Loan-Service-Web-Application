<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordr.aspx.cs" Inherits="passwordr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="login.css"/>
    <title>PasswordRecovery</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    <asp:Label Text="Password Recovery"   Font-Size="XX-Large"  runat="server" Font-Bold="true" ForeColor="Red" />
        
    <table>
            <tr>
               <td> <asp:Label runat="server" Text="Email Address" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" /></td>
                                 <td> <asp:TextBox id="tb2" runat="server"  AutoPostBack="true"/></td>
                
                <td><asp:Button runat="server" Text="Recover Password" Font-Size="Large"  OnClientClick="OnRecovery" OnClick="OnRecovery" ></asp:Button>
                    <asp:RequiredFieldValidator runat ="server"  ControlToValidate="tb2"  ErrorMessage=" Email id should be Filled" Font-Bold="true" ForeColor="Red" />
                <asp:RegularExpressionValidator ID="RegExpEmail" runat="server" ControlToValidate="tb2" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"  ErrorMessage="Not a valid email id" Font-Bold="true" ForeColor="Red"/></td>
                </tr>
        </table>
        <div>

        &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp  &nbsp  &nbsp   &nbsp  &nbsp  
        &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
        <asp:LinkButton runat="server" Text="Go Back to Main Page" Font-Size="Large" OnClientClick="OnLogin1" OnClick="OnLogin1_click" CausesValidation="false"/>

    </div>
    
    </div>
        </form>
    </body>
</html>
