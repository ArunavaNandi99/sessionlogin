<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Area</title>
</head>
<body>

	<h1>member Area!</h1>
	<%
	String username = null, sessionId = null;
	if (request.getSession().getAttribute("username") == null) {
		response.sendRedirect(request.getContextPath()+"/siteController?action=login");
	} else {
		username = request.getSession().getAttribute("username").toString();
		sessionId = request.getSession().getId();
	}
	%>

	Username:<%=username%><br /> CurrentSession:<%=sessionId%>


	<form
		action="<%=request.getContextPath()%>/memberAreaController"
		method="get">

		<input type="hidden" name="action" value="destroy"> <input
			type="submit" value="logout">
	</form>



</body>
</html>