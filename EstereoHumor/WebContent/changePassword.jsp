<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estereo Humor</title>
 <link href='/EstereoHumor/css/reg.css' type='text/css' rel='stylesheet' />
</head>
<body>
<center>
<s:div cssClass="header">
		<s:div cssClass="logo">
			<img src="images/headphones_icon.png" width="100px;" height="80px;"/>
      <img src="images/logo.png" width="220px;" height="80px;" style="margin-left:-10px"/> 
		</s:div>
		<s:div id="cssmenu_red">
			<ul>
				<li class="selected"><s:a action="homepage">Home</s:a></li>
				<li><s:a action="loginpage">Login</s:a></li>
				<li style="width: 110px;"><s:a action="registerpage">Registration</s:a></li>
			</ul>
		</s:div>
	</s:div>
	<s:div cssClass="mainbodychange">
<s:div cssClass="change-box">
<br>
     <h1>Change Password</h1>
	  <br>
	  <br>
	  <br>
<s:form action="changepass" theme="simple">
        <table>
							<td><s:password placeholder="Old Password" cssClass="text" name="oldPass" ></s:password></td>
							<tr><td>
							</td>
						</tr>
						
						<tr>
							<td><s:password placeholder="New Password" cssClass="text" name="newPass"></s:password></td>
						</tr>
						<tr><td><s:div cssClass="error"><s:fielderror fieldName="newPass"></s:fielderror></s:div>
						</td></tr>
						<tr>
						 <td><s:password placeholder="Confirm Password" cssClass="text" name="confirmPass"></s:password></td>
						</tr>
						<tr><td><s:div cssClass="error"><s:fielderror fieldName="confirmPass"></s:fielderror></s:div>
						</td></tr>											 
	  </table>
	  <br>
	  <s:div cssClass="btnwrap">
	  <table>
	     <tr>
	     <td>
	    <s:submit cssClass="btn" name="btn" value="Submit"></s:submit></td>
	    </tr>
	    </table>
	  </s:div>
	  </s:form>
 </s:div>
 <s:div cssClass="slidechange">
               	<img src="images/blackberry-music.png" width="900px;" height="400px;"/>
			</s:div>
 </s:div>
 <s:div cssClass="footer">
		<s:div cssClass="wrap">
			<ul id="company-promos">
				<li><a href="/company/"><img src="images/about.png"
						alt="Mad Scientist" width="200" height="198"
						style="margin-top: -100px;"> <br>
						<h2>About Us</h2> <br> Learn more about Concept a behind
						these apps. </a></li>

				<li><a href="/blog/"><img src="images/blog.png"
						alt="Blogbot" width="200" height="198" style="margin-top: -100px;">

						<h2>From the Blog</h2>
						<br>Stay up to date with the latest news on our blog. </a></li>
				<li><a href="/support/"><img src="images/help.png"
						alt="Nurse" width="200" height="198" style="margin-top: -100px;"><br>
					<h2>Get Help</h2>
					<br>Having trouble with one of our robots? We are here to help.
				   </a></li>
				<li><a href="http://twitter.com/tapbots/"
					title="Visit our Twitter page"><img src="images/twitter.png"
						alt="Twitter Bird" width="200" height="198"
						style="margin-top: -100px;"><br>
					<h2>Follow Estereo Humor</h2>
					<br>Follow us on Twitter,facebook,googleplus to get the latest.
					</a></li>
			</ul>

		</s:div>
	</s:div>
 
 <s:div cssClass="footer2">
	<s:div cssClass="social">
			<ul>
				<li class="tw"><a href="https://twitter.com/"> </a></li>
				<li class="fb"><a href="https://www.facebook.com/"></a></li>
				<li class="gp"><a href="https://plus.google.com/"></a></li>
				<li class="in"><a href="https://www.linkedin.com/"></a></li>
			</ul>
		</s:div>
	<p class="copyright">
		©2008-2014 Estereo Humor. All Rights Reserved. <strong>All
			Your Bots are Belong to Us.</strong>
	</p>
	</s:div>
</center>
</body>
</html>