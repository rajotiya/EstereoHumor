<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estereo Humor</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type='text/javascript' src='js/bg.js'></script>
<script type='text/javascript' src='js/slider.js'></script>
<script type='text/javascript' src='js/move.js'></script>
<link href='/EstereoHumor/css/style.css' type='text/css' rel='stylesheet' />
<link rel="shortcutkey" href='/EstereoHumor/images/unnamed.jpg' />
</head>
<body>

<s:form action="search" theme="simple">
<s:div cssClass="mainbody">
<s:div cssClass="slider" id="img1"></s:div>
		<s:div cssClass="slider" id="img2"></s:div>
	<s:div cssClass="slider" id="img3"></s:div>
		<s:div cssClass="slider" id="img4"></s:div>
		<s:div cssClass="slider" id="img5"></s:div>
		<s:div cssClass="slider" id="img6"></s:div>
		<s:div cssClass="slider" id="img7"></s:div>
	<s:div cssClass="header">
		<s:div cssClass="logo">
			<img src="images/headphones_icon.png" width="100px;" height="80px;"/>
      <img src="images/logo.png" width="220px;" height="80px;" style="margin-left:-10px"/> 
		</s:div>
		<s:div id="cssmenu_red">
			<ul>
				<li class="selected"><a href="#">Home</a></li>
				<li><s:a action="loginpage">Login</s:a></li>
				<li style="width: 130px;"><s:a action="registerpage">Registration</s:a></li>
			</ul>
		</s:div>

	</s:div>
	<s:div cssClass="find">
	<center>
		<s:div cssClass="subfind">
		  		  <h3>Search</h3>
			<s:textfield name="search" cssClass="text" id="searchinput" placeholder="Type Your Mood...."></s:textfield>
				</s:div>
				</center>
				</s:div>
	</s:div>
	<s:div cssClass="maincontainer">
	<center>
	<table border="0" width="90%">
	<tr></tr>
	<tr></tr>
          <tr style="height: 330px;"><td align="left" width="50%"><ul><li id="left_butt"><img src="images/download.png" align="middle"/></li></ul></td>
              <td align="right"><ul><li id="right_butt"><img src="images/download (1).png" align="middle"/></li></ul></td></tr>
              </center>
              </table>
			
	<s:div cssClass="container">
		<s:div cssClass="subcontainer">
			<h2 style="padding-top: 5px;">Listen your favourite songs</h2>
		</s:div>
		<s:div cssClass='main_page_carousel'>
 <s:div cssClass="moving">   
  
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Mix Hit</b>
				</p>
			</s:div>
			<img src="images/p.png" align="middle" width="200px;" height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Hollywood</b>
				</p>
			</s:div>
			<img src="images/g.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Bollywood</b>
				</p>
			</s:div>
			<img src="images/b1.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Bhajan</b>
				</p>
			</s:div>
			<img src="images/h.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Singers Songs</b>
				</p>
			</s:div>
			<img src="images/s.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Panjabi Songs</b>
				</p>
			</s:div>
			<img src="images/d.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Folk Songs</b>
				</p>
			</s:div>
			<img src="images/r.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Ghajal</b>
				</p>
			</s:div>
			<img src="images/g1.png" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Singers Songs</b>
				</p>
			</s:div>
			<img src="images/s.png" align="middle" width="200px;"
				height="150px;" />
		</s:div><s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Folk Songs</b>
				</p>
			</s:div>
			<img src="images/folk-music.jpg" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Folk Songs</b>
				</p>
			</s:div>
			<img src="images/folk-music.jpg" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Folk Songs</b>
				</p>
			</s:div>
			<img src="images/folk-music.jpg" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		<s:div cssClass="subdiv">
			<s:div cssClass="heading">
				<p>
					<b>Folk Songs</b>
				</p>
			</s:div>
			<img src="images/folk-music.jpg" align="middle" width="200px;"
				height="150px;" />
		</s:div>
		
					</s:div>
			</s:div>
			 
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
	</s:form>
</body>
</html>