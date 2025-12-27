<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix= 'c' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
	<form action="LoginServlet" method="post">
	<label>Username : </label>
	<input type='text' name='username'>
	<label>Password : </label>
	<input type='password' name='password'>
	<input type = 'submit' value = 'Login'>
	</form>
	<p> <c:out value="${message}" ></c:out></p>

</body>
</html>