<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix= 'c' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<h2>Welcome <c:out value= '${username}' > </c:out></h2>
	<form action= 'WelcomeServlet' method = 'post'>
		<input type = 'submit' name = 'Employees' value = 'Employees'>	
		<input type = 'submit' name = 'Logout'  value = 'Logout'>
	</form>
	

</body>
</html>