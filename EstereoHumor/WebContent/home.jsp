<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estereo Humor</title>
 <link href='/EstereoHumor/css/home.css' type='text/css' rel='stylesheet' />
</head>
<body>
<s:div cssClass="header">
		<s:div cssClass="logo">
			<img src="images/headphones_icon.png" width="100px;" height="80px;"/>
      <img src="images/logo.png" width="220px;" height="80px;" style="margin-left:-10px"/> 
		</s:div>
		<s:div id="cssmenu_red">
			<ul>
				<li class="selected"><s:a  action="homepage">Home</s:a></li>
				<li><s:a action="loginpage">Login</s:a></li>
				<li style="width: 115px;"><s:a action="registerpage">Registration</s:a></li>
			</ul>
		</s:div>

	</s:div>


<s:div cssClass="find">
<s:div cssClass="search-wrapper cf">
<s:textfield name="search"></s:textfield>
<button type="submit">Search</button>
</s:div>
</s:div>
</body>
</html>
