<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include file="../Connections/con_database.asp" -->
<!--#include file="../ScriptLibrary/tsiFunctions.asp" -->
<% intHeader_pic = 12 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<title>Welcome to Max' Restaurant</title>


<script type="text/javascript" src="js/mootools.v1.1.js"></script>
<script type="text/javascript">
<!--
var arrDetails = new Array();
arrDetails[0] = "&nbsp;";
arrDetails[1] = "To contact us relating to any Max\'s of the Philippines Restaurants in the <br>U.S., please fill out the form below.";
arrDetails[2] = "<p><b>Max's Restaurant in San Francisco</b><br>1155 El Camino RealSouth San Francisco, <br>CA 94080Tel. #: 650-872-6748For directions, <a href=\'http:\/\/maps.yahoo.com\/\/dd?taddr=1155+El+Camino+Real&tcsz=South+San+Francisco%2C+CA+94080-3207&country=us\' target=\'_blank\'>click here</a>.<br>To e-mail, please fill out the form below and we will get back to you shortly.</p>";
arrDetails[3] = "<p><b>International Franchising</b><br><em>Franchising</em><br><br>For inquiries regarding our franchising programs outside the Philippines, please fill out the form below.<br>Thank you.</p>";
arrDetails[4] = "<p><b>Philippine Franchising</b><br><br>If you are interested in franchising opportunities in the Philippines, please e-mail us by filling out the form below.<br></p>";
arrDetails[5] = "To contact us relating to any Max\'s Philippines Restaurants Services. <br> Please fill out the form below.";
arrDetails[6] = "<p><b>Online Ordering</b><br><br><em>Online Ordering</em>For questions, comments or suggestions relating to Max's Restaurant's online ordering for delivery to the Philippines, you can contact us via e-mail using the form below.<br></p>";

var arrDetails2 = new Array();
arrDetails2[0] = "";
arrDetails2[1] = "US Customer Service";
arrDetails2[2] = "Max's Restaurant in San Francisco";
arrDetails2[3] = "International Franchising";
arrDetails2[4] = "Philippine Franchising";
arrDetails2[5] = "Philippine Feedback";
arrDetails2[6] = "Online Ordering";

function contact() {

	x = $("contact_id").selectedIndex;
	$("details_contact").innerHTML = (arrDetails[x]);
	
	x2 = $("contact_id").selectedIndex;
	document.form1.txtSubject2.value=(arrDetails2[x]);
	
}				
//-->
</script>


<script language="javascript">

function IsNumeric(strString)
   {
     var strValidChars = "0123456789.-";
     var strChar;
     var blnResult = true;
       if (strString.length == 0) return false;
       for (i = 0; i < strString.length && blnResult == true; i++)
         {
           strChar = strString.charAt(i);
           if (strValidChars.indexOf(strChar) == -1)
             {
              blnResult = false;
             }
         }
        return blnResult;
   }


function trim(value) {
   var temp = value;
   var obj = /^(\s*)([\W\w]*)(\b\s*$)/;
   if (obj.test(temp)) { temp = temp.replace(obj, '$2'); }
   var obj = / +/g;
   temp = temp.replace(obj, " ");
   if (temp == " ") { temp = ""; }
   return temp;
}

//re = /^\w+([\.-]?\w+)*@+([\.]?\w+)*(\.\w{2,3})+$/
re =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;


function CheckForm(x)
{
//x=document.form1.txtEmail.value;
<!----contact type--->	
	if (trim(x.contact_id.value) == "0"){
	        alert("Please select a contact.");
			x.contact_id.focus()
			//x.contact_id.select()
            return false;
	} 

<!----email--->	
	if (trim(x.txtEmail.value) == ""){
	        alert("Email field required.");
			x.txtEmail.focus()
			x.txtEmail.select()
            return false;
	} 
if (re.test(x.txtEmail.value) == false)
		{
		alert("Invalid E-mail Address");
		x.txtEmail.focus()
		x.txtEmail.select()
        return false;	  
		}

}
</script>



<link href="css/tsi.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array(); 
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
</head>

<body background="images/template_objects/header/header_bg.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
	<div id="template_main_div">
	  <table width="770" border="0" cellspacing="0" cellpadding="0">
	    <!--DWLayoutTable-->
        <tr valign="top">
          <td align="center"><!--#include file="header.asp" --></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr align="left" valign="top">
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr align="left" valign="top">
              <td width="186"><table width="92%" border="0" cellspacing="0" cellpadding="0">
                <% If 1=2 Then %>
                <tr>
                  <td><img src="images/titles/order_online.gif" width="180" height="45"></td>
                </tr>
                <tr>
                  <td align="left" valign="top" height="10"></td>
                </tr>
                <tr>
                  <td align="left" valign="top" height="10"><table width="183" border="0" align="center" cellpadding="4" cellspacing="0">
                    <tr>
                      <td colspan="2"><strong>For registered members. </strong></td>
                      </tr>
                    <tr>
                      <td width="71">Username</td>
                      <td width="129">: 
                        <input name="uname" type="text" id="uname" size="12"></td>
                    </tr>
                    <tr>
                      <td>Password</td>
                      <td>: 
                        <input name="pword" type="text" id="pword" size="12"></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="right"><input type="submit" name="Submit" value="Login"></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td align="left" valign="top" height="10"></td>
                </tr>
                <tr>
                  <td align="left" valign="top" style="padding:4px; "></td>
                </tr>
                <% End If %>
                
                <tr>
                  <td align="left" valign="top"><!--#include file="includes/commercial.asp" --></td>
                </tr>
              </table></td>
              <td width="8">&nbsp;</td>
              <td width="575"><table width="97%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><img src="images/titles/contactus.gif" width="330" height="26"></td>
                  </tr>
                <tr>
                  <td align="left" valign="top">&nbsp;</td>
                  </tr>
                <tr>
                  <td height="27" align="left" valign="top"><strong> Thank you for visiting Max's website!</strong></td>
                  </tr>
                <tr>
                  <td align="left" valign="top"> We welcome and value your comments, questions and suggestions. Please choose the appropriate contact department by choosing from the drop down box below.</td>
                  </tr>
                <tr>
                  <td align="left" valign="top">&nbsp;</td>
                  </tr>
                <tr>
                  <td align="left" valign="top"><form name="form1" method="post" action="feedback_process.aspx" onSubmit="return CheckForm(this)">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="5">
                      <tr align="left" valign="top">
                        <td width="19%">Select Contact</td>
                          <td width="2%">:</td>
                          <td width="79%"><select name="contact_id" id="contact_id" onChange="contact()">
  <option value="0" selected>- Please select from the contacts here -  </option>
  
  
  <option value="grs@maxsusa.com;wer@maxsusa.com;rksanbuenaventura@maxschicken.com.ph;lcsangalang@maxschicken.com.ph;frangretch@yahoo.com;amcapulong@maxschicken.com.ph">  - US Customer Service -  </option>


  <option value="grs@maxsusa.com;wer@maxsusa.com;rksanbuenaventura@maxschicken.com.ph;lcsangalang@maxschicken.com.ph;frangretch@yahoo.com;amcapulong@maxschicken.com.ph">    - Max's Restaurant in San Francisco -  </option>


  <option value="wer@maxsusa.com;grs@maxsusa.com;lcsangalang@maxschicken.com.ph;frangretch@yahoo.com;amcapulong@maxschicken.com.ph; mvmangahas@maxschicken.com.ph">  - International Franchising -  </option>


  <option value="lcsangalang@maxschicken.com.ph;amcapulong@maxschicken.com.ph">    - Philippine Franchising -  </option>

    
  <option value="lcsangalang@maxschicken.com.ph;amcapulong@maxschicken.com.ph;idpenalosa@maxschicken.com.ph;bgnaniong@maxschicken.com.ph"> - Philippine Feedback -  </option>

                            
  <option value="mvmangahas@maxschicken.com.ph;lcsangalang@maxschicken.com.ph;bgnaniong@maxschicken.com.ph;idpenalosa@maxschicken.com.ph">
    - Online Ordering -  </option>
  </select></td>
                        </tr>
                      <tr align="left" valign="top">
                        <td colspan="3" id="details_contact">&nbsp;</td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td colspan="3">Send an Email to this Contact: </td>
                          </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>Your Name</td>
                          <td>:</td>
                          <td><input name="txtName" type="text" id="txtName"></td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>E-mail Address </td>
                          <td>:</td>
                          <td><input name="txtEmail" type="text" id="txtEmail"></td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>Message Subject </td>
                          <td>:</td>
                          <td><input name="txtSubject" type="text" id="txtSubject" size="45">
                            <input name="txtSubject2" type="text" id="txtSubject2" size="45"></td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>Message </td>
                          <td>:</td>
                          <td><textarea name="txtMessage" cols="45" rows="8" id="txtMessage"></textarea></td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>Security Code </td>
                          <td>:</td>
                          <td><!-- #include file="sec_code/form_inc.asp" --></td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                      <tr align="left" valign="top" bgcolor="#F0F0F0">
                        <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td><input name="Submit" type="submit" id="Submit" value="Send"> &nbsp;
                            <input type="reset" name="Reset" value="Reset"></td>
                        </tr>
                      </table>
                    </form></td>
                  </tr>
                <tr>
                  <td align="left" valign="top">&nbsp;</td>
                  </tr>
                <% If 1=2 Then %>
                <tr>
                  <td align="left" valign="top"><strong>Rey Marc H. San Juan</strong><br>
                    Assistant Marketing Manager - Parties and Functions<br>
                    Ad Circles Inc. - Max's Restaurant<br>
                    Office: (632) 815-6974<br>
                    Fax: (632) 813-7273<br>
                    E-mail: <a href="mailto:mhsanjuan@maxschicken.com.ph">mhsanjuan@maxschicken.com.ph</a></td>
                  </tr>
                <% End If %>
              </table></td>
            </tr>
            <tr align="left" valign="top">
              <td height="21"></td>
              <td height="21"></td>
              <td height="21"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><table width="770" border="0" cellpadding="0" cellspacing="0" id="footer">
            <tr>
              <td height="30" background="images/template_objects/footer/footer_bg.jpg">&nbsp;</td>
            </tr>
            <tr>
              <td align="center">Copyright &copy; 2006. Max's Restaurant. All rights reserved.<br>
      Website developed by <a href="http://www.webfocus.ph">WebFocus Solutions, Inc.</a> </td>
            </tr>
          </table></td>
        </tr>
      </table>
	</div>
</center>
</body>
</html>
