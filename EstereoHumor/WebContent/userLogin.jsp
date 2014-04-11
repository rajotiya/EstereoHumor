<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<link href='/EstereoHumor/css/home.css' type='text/css' rel='stylesheet' />
<link href="/EstereoHumor/css/popup.css" type="text/css"
	rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estereo Humor</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type='text/javascript' src='js/changepopup.js'></script>
<script type='text/javascript' src='js/upload1.js'></script>
<script>
	$(document).ready(function() {
		$(".menu").click(function() {
			$(".menulist").animate({
				height : 'toggle'
			});
		});
		$(".menu").click(function() {
			$(".menu").animate({
				height : 'slideUp'
			});
		});
	});
</script>
<script type="text/javascript" src="http://mediaplayer.yahoo.com/js"></script>
</head>
<body>
	<s:div cssClass="popup">
		<s:div cssClass="close">
			<img src="images/close.png" width="20px;" height="20px;" />
		</s:div>
		<center>
			<h2>Change Password</h2>
			<s:form action="changepass" theme="simple">
				<s:div cssClass="popup1"></s:div>
				<table>
					<tr>
					<td><s:password placeholder="Old Password" cssClass="text"
							name="oldPass"></s:password></td>
					</tr>

					<tr>
					<tr>
						<td><s:div cssClass="error">
								<s:fielderror fieldName="nm"></s:fielderror>
							</s:div></td>
					</tr>

					<tr>
						<td><s:password placeholder="New Password" cssClass="text"
								name="newPass"></s:password></td>
					</tr>
					<tr>
						<td><s:div cssClass="error">
								<s:fielderror fieldName="em"></s:fielderror>
							</s:div></td>
					</tr>
					<tr>
						<td><s:password placeholder="Confirm Password"
								cssClass="text" name="confirmPass"></s:password></td>
					</tr>
					<tr>
						<td><s:div cssClass="error">
								<s:fielderror fieldName="cpass"></s:fielderror>
							</s:div></td>
					</tr>
				</table>
				<s:div cssClass="btnwrap">
					<table>
						<tr>
							<td><s:submit cssClass="btn" name="btn" value="Submit"></s:submit></td>
							<td><s:reset cssClass="btn" name="btn" value="Reset"></s:reset></td>
						</tr>
					</table>
				</s:div>
			</s:form>
		</center>
	</s:div>
	<s:div cssClass="maindiv"></s:div>
	<s:if test="#session.sessionStatus">
		<s:div cssClass="header">
			<s:div cssClass="logo">
				<img src="images/headphones_icon.png" width="100px;" height="80px;" />
				<img src="images/logo.png" width="220px;" height="80px;"
					style="margin-left: -10px" />
			</s:div>
			<s:div cssClass="uname">Hi &nbsp; <s:property
					value="#session.userData.firstName" />
			</s:div>
			<s:div cssClass="menu">
				<img src="images/arrow.png" />
			</s:div>
			<s:div cssClass="menulist">
				<ul>
					<li style="padding-top: 2px;"><s:a action="homepage">
							<img src="images/home (1).png" width="20px;" height="20px;"
								align="left" />Home</s:a></li>
					<li><img src="images/key.png" width="20px;" height="20px;"
						align="left" /><span class="cp" style="color: white;">Change
							password</span></li>
					<li><s:a action="logout">
							<img src="images/logout.png" width="20px;" height="20px;"
								align="left" />Logout</s:a></li>
				</ul>
			</s:div>
		</s:div>


		<s:div cssClass="find">
			<s:div cssClass="search-wrapper cf">
				<s:textfield name="search"></s:textfield>
				<button type="submit">Search</button>
			</s:div>
		</s:div>
		<s:div cssClass="uploadIn">
		<h3><center> <b>Upload Song</b></center></h3>
		<center><p>choose the file for uploading :</p>
				 <s:form action="imageUpload" method="post">
					<s:file name="profileImage" accept="audio/*" />
					<s:submit value="Upload" cssClass="btn" align="center" />
				</s:form>
				</center> 
				</s:div>
		<s:div cssClass="upload"><center><s:a cssClass="uploadOut">
					<b>Upload Song</b>
				</s:a></center>
				</s:div>
		<s:url id="fileDownload" action="download"></s:url>
		<s:url id="playAudio" action="Play"></s:url>

		<h4>
			Download file -
			<s:a href="%{fileDownload}">fileABC.mp3</s:a>
		</h4>
		<h4>
			Play Audio-
			<s:a href="%{playAudio}">fileABC.mp3</s:a>
		</h4>
		<%-- 
		<s:div cssClass="play">
			<s:url id="audioplay" action="Play"></s:url>
			<h4>
				Play Audio -
				<s:a href="%{audioplay}">fileABC.mp3</s:a>
			</h4>
			
			<audio controls="controls">
				<source src="<s:url action="Play"></s:url>" type="audio/mp3">Your browser does not support the audio element.</source>			
			</audio>
		</s:div> --%>
	</s:if>
	<s:else>
		<c:redirect url="index"></c:redirect>
	</s:else>

</body>
</html>
