<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/EstereoHumor/css/login.css" type="text/css"rel="stylesheet" />
<link href="/EstereoHumor/css/popup.css" type="text/css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estereo Humor</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type='text/javascript' src='js/popup.js'></script>
</head>
<body>
<s:div cssClass="popup">
<s:div cssClass="close"><img src="images/close.png" width="20px;" height="20px;" /></s:div>
<center> <h2>Forgot Password</h2> </center>
<p>Enter your email address below and we will send you password on your email.</p>

			<s:form action="forget" theme="simple" id="form1">
				<s:div cssClass="popup1"></s:div>
				<s:label for="email">Email*</s:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<s:textfield cssClass="text" name="forgetEmail"  placeholder="Login Email"> </s:textfield>	
				<s:fielderror fieldName="forgetEmail" cssClass="error"></s:fielderror>
						<br>
						<br>
						<br>
			<table width="440px" align="right">		
			<tr>	
				<td style="margin-right: 50px;"><s:submit value="SEND" cssClass="btn"></s:submit></td>
				</table>
		 </s:form>
		 </s:div>
		 <s:div cssClass="maindiv"></s:div>
		<s:div cssClass="header">
			<s:div cssClass="logo">
				<img src="images/headphones_icon.png" width="100px;" height="80px;" />
				<img src="images/logo.png" width="220px;" height="80px;"
					style="margin-left: -10px" />
			</s:div>
			<s:div id="cssmenu_red">
			<ul>
				<li class="selected"><s:a action="homepage">Home</s:a></li>
				<li><s:a action="loginpage">Login</s:a></li>
				<li style="width: 110px;"><s:a action="registerpage">Registration</s:a></li>
			</ul>
		</s:div>

		</s:div>
		<s:div cssClass="mainbody">
			<s:div cssClass="login-box">
				<h1>Sign In</h1>
				<br>
				<s:form action="home" theme="simple">
					<table>
						<tr>
							<td style="height: 50px;" colspan="2"><s:textfield
									placeholder="Email" cssClass="text" name="em"></s:textfield></td>
						</tr>
						<tr>
							<td><s:div cssClass="error">
									<s:fielderror fieldName="em"></s:fielderror>
								</s:div></td>
						</tr>
						<tr>
							<td style="height: 60px;" colspan="2"><s:password
									placeholder="password" cssClass="text" name="pass"></s:password></td>
						</tr>
						<tr>
							<td><s:div cssClass="error">
									<s:fielderror fieldName="pass"></s:fielderror>
								</s:div></td>
						</tr>
						
						<tr><td></td></tr>
						<tr><td></td></tr>
						<tr><td></td></tr>
						<tr>
							<td style="margin-top: 20px;"><s:checkbox name="cb"
									label="Remember"></s:checkbox> <label for="cb"
								style="color: gray;">Remember me</label></td>
							<td><span class='fp'>Forgot Password ?</span></td>
						</tr>
					</table>
					<br>
					<br>
					<br>
					<s:submit cssClass="btn" name="btn" value="Sign In"></s:submit>
				</s:form>
			</s:div>
			<s:div cssClass="slide">
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





