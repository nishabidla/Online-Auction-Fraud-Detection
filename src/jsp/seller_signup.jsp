<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Auction Fraud</title>
<script type="text/javascript">

function valid()
{
var aa=document.s.un.value;
if(aa=="")
{
alert("Enter Name");
document.s.un.focus();
return false;
}
var bb=document.s.cn.value;
if(bb=="")
{
alert("Enter Company Name");
document.s.cn.focus();
return false;
}


var a=document.s.uid.value;
if(a=="")
{
alert("Enter User ID");
document.s.uid.focus();
return false;
}
var b=document.s.pass.value;
if(b=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}


var k = document.s.mob.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mob.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mob.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.s.mob.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mob.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.eid.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.eid.focus();
return false;
}
var webfilter=/www\.[a-z]+\.(com)|(org)|(edu)|(net)$/;
var n=webfilter.test(document.s.wid.value);
if(n==false)
{
alert("Please enter a valid Website Address");
document.s.wid.focus();
return false;
}

}

</script>

<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>

<body>
<%
 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
String u=null;int u2=0,u1=0;
try
{
Connection con=databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from user");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
u=rs.getString("uid");
}
if(u==null)
{
 u2=u1+1;
}
else
{
u1=Integer.parseInt(u);
u2=u1+1;
}
String u3=Integer.toString(u2);
session.setAttribute("u3",u3);
%>

<div id="wrapper"> 
  <div id="container"> 
    <div id="header"> 
      <div id="logo"><br>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+2" face="Georgia, Times New Roman, Times, serif"> 
        Online Modeling of Proactive Moderation System for <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Auction Fraud Detection</font></strong></div>
    </div>
    <!-- /header -->
    <div id="navbar"> 
      <ul>
        <li><a href="index.html">Home</a></li>
        
      </ul>
    </div>
    <!-- /navbar -->
    <div id="main"> 
      <div id="intro"> 
        <!-- <div id="sellerpic">
        </div>-->
        <!-- /jakepic -->
        <div id="text"> </div>
        <!-- /text -->
        <table height="350" align="center" width="700">
          <tr bgcolor="#CC3300"> 
            <td width="610" bgcolor="#FBF7E1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#336633" size="+1" face="Georgia, Times New Roman, Times, serif"><img src="images/key.png" width="35" height="35" />&nbsp;Seller 
              Signup</font></strong> <br> <form name="s" action="seller_signup1.jsp" method="get" onsubmit="return valid()">
                <table align="left" cellpadding="5" cellspacing="5" width="300">
                  <tr> 
                    <td colspan="2" align="center"><font size="2"><b> 
                      <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red' size='+1'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registered Successfully !</blink></font>");
                                                       }
                                               %>
                      </b></font></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>ID</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font face="Courier New" size="+1" color="#993300"><%=u3%></font></strong></td>
                    <td></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Seller Name</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="un" id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Company Name</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="cn" id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>User ID</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="uid"  id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Password</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass"  id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Mobile</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mob"  id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Email ID</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="eid"  id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Website</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="wid"  id="b"></td>
                  </tr>
                  <tr> 
                    <td><font face="Courier New" size="+1"><strong>Date</strong></font></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="date"  id="b" value="<%=strDateNew1%>"></td>
                  </tr>
                  <tr> 
                    <td><input type="reset" name="r" value="clear" class="btn"></td>
                    <td><input type="submit" name="s" value="submit" class="btn" ></td>
                  </tr>
                </table>
              </form></td>
            <td width="147" bgcolor="#F3ECC2"> <table>
                <tr> 
                  <td align="center"><font color="#FF0000" size="+1" face="Georgia, Times New Roman, Times, serif"><strong><img src="images/reg.png" width="35" height="35">Registration</strong></font></td>
                </tr>
                <tr> 
                  <td align="center"><font face="Comic Sans MS" size="+1"><strong><a href="seller_signup.jsp">Seller</a></strong></font></td>
                </tr>
                <tr> 
                  <td align="center"><font face="Comic Sans MS" size="+1"><strong><a href="user_signup.jsp">User</a></strong></font></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr> 
                  <td align="center"><font color="#FF0000" size="+1" face="Georgia, Times New Roman, Times, serif"><strong><img src="images/log1.png" width="35" height="35"><br>
                    Login</strong></font></td>
                </tr>
                <tr> 
                  <td align="center"><font face="Comic Sans MS" size="+1"><a href="seller_log.jsp">Seller</a></font></td>
                </tr>
                <tr> 
                  <td align="center"><font face="Comic Sans MS" size="+1"><a href="user_log.jsp">User</a></font></td>
                </tr>
                <tr> 
                  <td align="center"><font face="Comic Sans MS" size="+1"><a href="admin_log.jsp">Admin</a></font></td>
                </tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr></tr>
              </table></td>
          </tr>
        </table>
      </div>
      <!-- /intro -->
      <div id="columns-wrapper"> 
        <!-- /form-intro -->
        <!-- /newsletter -->
        <!-- /right -->
        <!-- /left -->
      </div>
      <!-- /columns-wrapper -->
    </div>
    <!-- /main -->
    <div id="footer"> 
      <div id="footer-right">&nbsp;</div>
      <div id="footer-left">&nbsp;</div>
      <br>
      <br>
      <strong><font color="#33CC66">WWW.online.com</font></strong> </div>
    <!-- /footer -->
  </div>
  <!-- /container -->
</div>
<!-- /wrapper -->
</body>
</html>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>