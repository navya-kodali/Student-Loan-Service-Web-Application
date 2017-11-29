<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Registration</title>
   <link rel="stylesheet" type="text/css" href="login.css"/>
    <script type="text/javascript" lang="javascript">
       
        function CallConfirmBox() {
            if (confirm("Confirm Proceed Further?")) {
                //OK – Do your stuff or call any callback method here..
                alert("You pressed OK!");
            } else {
                //CANCEL – Do your stuff or call any callback method here..
                alert("You pressed Cancel!");
            }
        }
    
       
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
             Registration
           </span>
             <span style="float: right;">
                <asp:LinkButton ID="LinkButton2"
                    Text="Login"
                    Font-Names="TimesNewRoman"
                    Font-Size="16pt"
                    OnClick="LinkButton2_Click"
                    runat="server"  CausesValidation="false"/>
            </span>
            </div>
        <p>&nbsp</p>
        <p>&nbsp</p>

        <div id="checkb">
        <asp:CheckBox  Text="By providing this information,I certify that I am the person identified by 
            these items, and that I agree to the site Terms of Use." Font-Size="Large" ForeColor="DarkBlue" runat="server"  ID="cb1" AutoPostBack="True"  />
        </div>
        <br />

        <table>
       
            <tr>
               <td>          
        <asp:Label Text="Full Name" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
        <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
        <td><asp:TextBox  Id="Tb1" runat="server" Width="55%" /><asp:Label Text="?" runat="server" Font-Size="Large" BackColor="Yellow" Font-Bold="true" ForeColor="Red"  />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Tb1" ErrorMessage="Full Name Required" ForeColor="Red" />
          </td></tr>
            <tr></tr>
             <tr>
             <td>
        <asp:Label Text="Social Security Number" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label>
        <asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="Tb2" runat="server" Width="35%"  AutoPostBack="true" />&nbsp
        <div class="tooltip">?<span class="tooltiptext">Once you set up a User Name to access your account, you will no longer need to provide your complete social security number/account number, birthdate or zip code to log in. For security, you will need to provide your full social security number or account number if your forget your User Name or Password.</span></div>
          &nbsp <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb2" ErrorMessage="Field is required"   Font-Bold="true" ForeColor="Red" />
               <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb2" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" ErrorMessage="999-99-9999 pattern" ForeColor="Red" Font-Bold="true"></asp:RegularExpressionValidator>
                 </td>
            </tr>
        <tr></tr>
            <tr>
       <td> <asp:Label Text="Confirm Social Security Number" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
            <td><asp:TextBox  ID="Tb3" runat="server" Width="35%" /> 
                <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb3" ErrorMessage="Field is required"   Font-Bold="true" ForeColor="Red" />
                <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb3" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" ErrorMessage="999-99-9999 pattern" ForeColor="Red" Font-Bold="true"/>
                <asp:CompareValidator   controltovalidate="Tb2" controltocompare="Tb3" runat="server" ErrorMessage="Mismatch of Social Security Number" />
            </td>
               </tr>
            <tr></tr>

            <tr>
                <td><asp:Label Text="Date of Birth" runat="server" Font-Size="Large" Font-Bold="true"  ID="date"></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label> </td>
           
                 <td>
       
        <asp:DropDownList ID = "ddlMonthNames" runat="server" AutoPostBack="true">
        </asp:DropDownList> / 
        <asp:DropDownList runat="server" ID="Date1" AutoPostBack="true">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList> /
        <asp:DropDownList runat="server" ID="Year">
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1989</asp:ListItem>
            <asp:ListItem>1988</asp:ListItem>
            <asp:ListItem>1987</asp:ListItem>
            <asp:ListItem>1986</asp:ListItem>
            <asp:ListItem>1985</asp:ListItem>
            <asp:ListItem>1985</asp:ListItem>
            <asp:ListItem>1984</asp:ListItem>
            <asp:ListItem>1983</asp:ListItem>
            <asp:ListItem>1982</asp:ListItem>
            <asp:ListItem>1981</asp:ListItem>
            <asp:ListItem>1980</asp:ListItem>
            <asp:ListItem>1979</asp:ListItem>
            <asp:ListItem>1978</asp:ListItem>
            <asp:ListItem>1977</asp:ListItem>
            <asp:ListItem>1976</asp:ListItem>
            <asp:ListItem>1975</asp:ListItem>
            <asp:ListItem>1974</asp:ListItem>
            <asp:ListItem>1973</asp:ListItem>
            <asp:ListItem>1972</asp:ListItem>
            <asp:ListItem>1971</asp:ListItem>
            <asp:ListItem>1970</asp:ListItem>
            <asp:ListItem>1969</asp:ListItem>
            <asp:ListItem>1968</asp:ListItem>
            <asp:ListItem>1967</asp:ListItem>
            <asp:ListItem>1966</asp:ListItem>
            <asp:ListItem>1965</asp:ListItem>
            <asp:ListItem>1964</asp:ListItem>
            <asp:ListItem>1963</asp:ListItem>
            <asp:ListItem>1962</asp:ListItem>
            <asp:ListItem>1961</asp:ListItem>
            <asp:ListItem>1960</asp:ListItem>
            <asp:ListItem>1959</asp:ListItem>
            <asp:ListItem>1958</asp:ListItem>
            <asp:ListItem>1957</asp:ListItem>
            <asp:ListItem>1956</asp:ListItem>
            <asp:ListItem>1955</asp:ListItem>
            <asp:ListItem>1954</asp:ListItem>
            <asp:ListItem>1953</asp:ListItem>
            <asp:ListItem>1952</asp:ListItem>
            <asp:ListItem>1951</asp:ListItem>
            <asp:ListItem>1950</asp:ListItem>
        </asp:DropDownList>
       
            </td></tr>

            <tr></tr>
            <tr>
                <td><asp:Label Text="Address" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
       <td>
        <asp:TextBox ID="Tb4" runat="server" Width="75%" />&nbsp
         <div class="tooltip">?<span class="tooltiptext">Many foreign countries do not have a zip code. If you are foreign, you can skip the zip code in the address. </span></div>
      &nbsp  &nbsp<asp:RequiredFieldValidator runat="server" ControlToValidate="Tb4" ErrorMessage="Adress is required"  Font-Bold="true" ForeColor="Red" />
              </td>
            </tr>
            <tr></tr>

                  <tr>
                <td> <asp:Label Text="User Name" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label> </td>
           <td><asp:TextBox ID="Tb5"  runat="server" Width="55%" /> <asp:Label Text="6 to 64 characters" ForeColor="Red" BackColor="Yellow" runat="server" />
                &nbsp<asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb5" ErrorMessage="UserName is required"   Font-Bold="true" ForeColor="Red" />
                   <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb5" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{5,11}$" ErrorMessage="should be 6 to 64 characters" ForeColor="Red" Font-Bold="true"/>  </td>
                </tr>
            <tr></tr>
       <tr>
           <td><asp:Label Text="Password" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
           <td>
        <asp:TextBox  ID="Tb6" runat="server" Width="35%" />&nbsp
        <div class="tooltip">Password Rules<span class="tooltiptext"> Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters </span></div>
     &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp   &nbsp &nbsp &nbsp   &nbsp &nbsp &nbsp &nbsp &nbsp
               <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb6" ErrorMessage="Password is required"   Font-Bold="true" ForeColor="Red" />
                   <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb6" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ErrorMessage="It must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters" ForeColor="Red" Font-Bold="true"/>  
           </td> 
       </tr>
            <tr></tr>
            <tr>
                <td>
                 <asp:Label Text="Confirm Password" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
                    <td><asp:TextBox ID="Tb7" runat="server" Width="35%" />
                        <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb7" ErrorMessage="Password is required" Font-Bold="true" ForeColor="Red" />
                   <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb7" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ErrorMessage="It must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters" ForeColor="Red" Font-Bold="true"/>  
               <asp:CompareValidator controltovalidate="Tb6" controltocompare="Tb7" runat="server" ErrorMessage="Mismatch of Passwords" />
                         </td>
            </tr>
            <tr></tr>
       <tr>
           <td><asp:Label Text="Email Address" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
       
            <td>
        <asp:TextBox ID="Tb8" runat="server" Width="35%" />
                <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb8" ErrorMessage="Email Address is required"  Font-Bold="true" ForeColor="Red" />
                   <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb8" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="It must be filled with proper id" ForeColor="Red" Font-Bold="true"/>  
                </td></tr> 
            <tr></tr>
            <tr>
                <td><asp:Label Text="Confirm Email Address" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label></td>
                <td><asp:TextBox ID="Tb9" runat="server" Width="35%" /> <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb9" ErrorMessage="Email Address is required"  Font-Bold="true" ForeColor="Red" />
                   <asp:RegularExpressionValidator  runat="server" ControlToValidate="Tb9" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="It must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters" ForeColor="Red" Font-Bold="true"/>  
                    <asp:CompareValidator controltovalidate="Tb8" controltocompare="Tb9" runat="server" ErrorMessage="Mismatch of Email Ids" />
                </td>
            </tr>
            <tr></tr>
        <tr> <td><asp:Label Text="Security Question" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" /></td>
       <td>
        <asp:DropDownList ID = "security" runat="server" Width="45%">  
         <asp:ListItem>What is your mother's maiden name?</asp:ListItem> 
         <asp:ListItem>What was your childhood nicknmae?</asp:ListItem> 
         <asp:ListItem>What is the name of your favorite childhood friend?</asp:ListItem>
          <asp:ListItem>What is your Favourite Sport Team?</asp:ListItem> 
            <asp:ListItem>What was the make and model of your First  Car?</asp:ListItem>
            <asp:ListItem>What School did you attend for sixth grade?</asp:ListItem> 
             <asp:ListItem>What was your Last Name of your third grade teacher?</asp:ListItem> 
            <asp:ListItem>In What town was your first job?</asp:ListItem> 
             <asp:ListItem>What is your favourite movie?</asp:ListItem> 
             <asp:ListItem>Who is your childhood sports hero?</asp:ListItem>
              <asp:ListItem>In What year was your father born?</asp:ListItem> 
            </asp:DropDownList>
          
            &nbsp
        <div class="tooltip">?<span class="tooltiptext">Single word answers are best. John, red, green, drum, for example.</span></div></td>
           </tr>
            <tr></tr>
            <tr>
                <td><asp:Label Text="Answer" runat="server" Font-Size="Large" Font-Bold="true" ></asp:Label><asp:Label Text="*" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label> </td>
                <td><asp:TextBox ID="Tb10" runat="server" Width="35%" /> <asp:RequiredFieldValidator runat="server"   ControlToValidate="Tb10" ErrorMessage="Answer should be filled"   Font-Bold="true" ForeColor="Red" /></td>
                </tr>
            <tr></tr>
             </table>  
                <asp:Label Text="* DENOTES REQUIRED ITEMS" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="Red" ></asp:Label><br />
                 
            
        

        <div  style="margin-left: auto; margin-right: auto; ">
         &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
         &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
         &nbsp &nbsp &nbsp &nbsp &nbsp   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
         &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp 
         
            <asp:Button ID="BUTTON1" Text="Submit" runat="server"   OnClick ="OnConfirm"   Font-Bold="True" Font-Names="Arial" Font-Size="Larger" />
           
        </div> 
      <br /> <br />
        <asp:Label ID="Label1" runat="server" Text="" />
     
</form>
</body>
 </html>
