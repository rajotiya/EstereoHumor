<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<style type="text/css"></style>
</head>
<body>
	<s:div>
		<h2>Struts2 File Upload &amp; Save Example</h2>
		<s:actionerror />
		<s:form action="imageUpload" method="post" enctype="multipart/form-data">
			<s:file name="profileImage" label="User Image" accept="audio/*"/>
			<s:submit value="Upload" align="center" />
		</s:form>
	</s:div>
</body>
</html>