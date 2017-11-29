<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>


<script runat="server">

    
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" type="text/css" href="contact.css"/>
    <title>Contactus</title>
    <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;

        function loadContactInfor() {

            xmlhttp = new XMLHttpRequest();

            xmlhttp.onreadystatechange = readContactInfor;

            xmlhttp.open("GET", "contactus.xml", true);

            xmlhttp.send();
        }

        function readContactInfor() {
            if (xmlhttp.readyState == 4) {

                xmlDoc = xmlhttp.responseXML;

                var table = "";
                var infoRows = xmlDoc.getElementsByTagName("info");

                var totAttributes = infoRows[0].attributes.length;

                var mailing = infoRows[0].getAttribute("email");

                for (var next = 0; next < infoRows.length; next++) {
                    var mailing = infoRows[next].getAttribute("mailing-address");
                     var tollFree = infoRows[next].getAttribute("toll-free-phone");
                    var direct = infoRows[next].getAttribute("direct-phone");
                    var email = infoRows[next].getAttribute("email");
                    var website = infoRows[next].getAttribute("website");
                    table += " <tr><td> Mailing Address </td><td>" + mailing + "</td></tr> " + " <tr><td> Toll Free phone number </td><td>" + tollFree + "</td></tr> " +
                        " <tr><td> Direct Phone Number</td><td>" + direct + "</td></tr> " + " <tr><td> email </td><td>" + email + "</td></tr> " + " <tr><td> website</td><td>" + website + "</td></tr> ";
                }

                document.getElementById("xmlTable").innerHTML = table;
            }
        }
      </script>
</head>
<body onload="loadContactInfor();">
    <form id="form1" runat="server">
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
            
                 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        
            
               <div id="mainv">                   
            <span style="float: left;">

                <asp:LinkButton ID="LinkButton1"
                    Text="Home|"
                    Font-Names="TimesNewRoman"
                    Font-Size="16pt"
                    OnClick="LinkButton1_Click"
                    runat="server" />
                    Contact Us
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
      
        <div id="contactUsTable">
            <table id="xmlTable" border="1" width:"99%" >
               </table>
        </div>
        <br />
        <br />
        <br />
        <div style="text-align:center;color:blue">
             <br />
             <br />
             <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p ><b>You must be logged in to send us a message</b></p>
            <div style="text-align:center;color:red">
             <p><b>Please type your message below and click the send Message button.</b></p>
             </div>
             </div>
        <div style="text-align:center;">
                    <br />
                    <asp:TextBox ID="TextBox1" Rows="14" TextMode="MultiLine" runat ="server" width="100%"  style="margin-top:2px; margin-left:0px; " OnLoad="Page_Load1" Text=""></asp:TextBox>
                    <br />
                    <br />
            </div>
        <div style="text-align:center">
            <asp:Button ID="Button1" Text="Send Message"  runat="server"
                 Font-Bold="True" Font-Names="Arial" Font-Size="Larger" OnClick="Button1_load"></asp:Button>
               </div> 
        <asp:Label ID="Label1" runat="server" Text="" />
    
    </form>
</body>

</html>