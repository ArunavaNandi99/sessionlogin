<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/siteController" method="post">
		

		Name : <input type="text" name="name" /><br /> 
		Password :<input type="password" name="password"><br /> 
		<input type="hidden" name="action" value="loginSubmit">
		<input type="submit" value="Submit">

	</form>

</body>
</html>