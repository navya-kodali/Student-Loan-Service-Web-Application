<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>login</title>
   <link rel="stylesheet" type="text/css" href="login.css"/>
    <script type="text/javascript" lang="javascript">
        
    </script>
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
                    runat="server" CausesValidation="false"/>
              Login
           </span>
            </div>
         <p>&nbsp</p>
         <p>&nbsp</p>
        <br />
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
           <asp:Label Text="User Login" runat="server" Font-Size="XX-Large"  Font-Bold="true" ForeColor="Brown" />
        </div>
        <br /><br />
        <div>
        <asp:Label Text="If you are not a registered user,please click here:" Font-Size="XX-Large" runat="server" Font-Bold="true" ForeColor="Red" /><asp:LinkButton ID="LinkButtonR" OnClick="LinkButtonR_Click" Text="Register Now" runat="server" Font-Size="X-Large" Font-Bold="true" OnClientClick="LinkButtonR_Click" CausesValidation="false" /><br /><br/>
         <asp:Label Text="If you are a registered user,please enter your login credentials below" Font-Size="XX-Large" runat="server" Font-Bold="true" ForeColor="Blue" /><br /><br />
        <asp:Label Text="If you forgot your password please click here" Font-Size="X-Large" runat="server" Font-Bold="true" ForeColor="Red" /><asp:LinkButton ID="LinkButton2" OnClick="LinkButtonP_Click" Text="Recover My Password" runat="server" Font-Size="X-Large" Font-Bold="true"  OnClientClick="LinkButtonP_Click" CausesValidation="false"/><br /><br />
        </div>
        <table>
            <tr>
                <td> <asp:Label text="User Id(Email Address):" Font-Bold="true" Font-Size="Larger" runat="server" ForeColor="Purple"></asp:Label><asp:Label text="*" Font-Bold="true" Font-Size="Larger" runat="server" ForeColor="red"/></td>
                <td><asp:TextBox ID="Tb1" runat="server"  AutoPostBack="true"/>
                    <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb1" ErrorMessage="User Id is required"   Font-Bold="true" ForeColor="Red" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="Tb1" ErrorMessage="User Id does not match"  Font-Bold="true" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                    </td>
            </tr>
       <tr><td><asp:Label text="Password:" Font-Size="Larger" Font-Bold="true" runat="server" ForeColor="Purple"></asp:Label><asp:Label text="*" Font-Bold="true" Font-Size="Larger" runat="server" ForeColor="red"/></td>
        <td><asp:TextBox id="Tb2" runat="server"  AutoPostBack="true"/>
            <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb2" ErrorMessage="Password is required"  Font-Bold="true" ForeColor="Red" /></td>
           </tr>
        </table>
        <div >
         <asp:Label text="* DENOTES REQUIRED ITEMS" Font-Bold="true" Font-Size="Larger" runat="server" ForeColor="red"/>
         &nbsp &nbsp 
            <asp:Button ID="Button1" Text="Log In" runat="server"
                Font-Bold="True" Font-Names="Arial" Font-Size="Larger" OnClick="OnConfirm" ></asp:Button>
            
        </div> 
  
</form>
</body>
</html>
