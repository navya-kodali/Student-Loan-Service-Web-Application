<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>web application development  project</title>
   <link rel="stylesheet" type="text/css" href="mystyle.css"/>
   <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;

        function loadContactInfor() {

            xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = readContactInfor;

            xmlhttp.open("GET","EducationAdv.xml", true);

            xmlhttp.send();
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
            <div id="top">
                <nav>
				<ul>
					<li><asp:LinkButton Id="login" Text="login"  runat="server" OnClick="login_click" Font-Size="Larger"></asp:LinkButton></li>
					<li  id="menu"><a href="#" class="infocenter"><h3>Infocenter</h3></a><span>&#9658;</span>
                        
                   	<ul><li><a href="glossary.aspx">Glossary</a></li>
                                                <li><a href="faq.aspx">FAQ</a></li>
                        </ul>
                    
                        </li>
                      <li><a href="form1.aspx"><h3>Forms</h3></a></li>
					<li><a href="Myaccount.aspx"><h3>MyAccount</h3></a></li>
					<li><a href="contact.aspx"><h3>ContactUs</h3></a></li>
				</ul>
                    </nav>
            </div>
            

            <div id="para">
                 <h1><b>Who we are</b></h1>
                 <p>A student is never far away from their ambitions and a dream of studying.Sun Educational student loans may be able to help you pay for your education including eligible education-related expenses,such as tuition,housing, books, a laptop, lab fees, examination and many more. Students from every discipline can now take their first steps on the path to success. We are here to provide services for Campus Based Loans,Private Education Loans and Federal Family Education Loans.Sun Education Loan Services  offers you with a best facilities such as low interest rate, flexible loan terms .</p>
            </div>

         </div>    
        
        <div id="sub">
                <div id="comodo" >      
                <a href="https://ssl.comodo.com/">
                <img src="images/comodo-secure.png" alt="comodo secure"  style="border-style: none; border-color: inherit; border-width: 0;"/>
                </a>
               </div>

              <div id="image1">
                <img src="images/grad.jpg" alt="graduationpicture" style="height:100%;width:99%;"/>
              </div>
            <div id= "image2">
                <img src="images/gradu.jpg" alt="graduationpicture" style="height:100%;width:100%; margin-left: 0px;"/>       
		    </div>
        </div>

        <div class="adver">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/EducationAdv.xml"  KeywordFilter="education" Height="300" Width="235" />
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/EducationAdv.xml"  KeywordFilter="education" Height="300" Width="235"  />
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/EducationAdv.xml"  KeywordFilter="education" Height="300" Width="235"  />
            <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/EducationAdv.xml"  KeywordFilter="education" Height="300" Width="235" />
            <asp:AdRotator ID="AdRotator5" runat="server" AdvertisementFile="~/EducationAdv.xml"  KeywordFilter="education" Height="300" Width="235" />
            
            </div>
    <div id="bottom">
         <hr/>
        <footer>&copy;Sun Educational Loan Services,Inc.All rights reserved.2016-2018</footer>
    </div>
</form>
</body>
</html>
