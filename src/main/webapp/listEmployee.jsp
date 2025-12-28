<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>List Employee</title>
	</head>	
	<body>
		<c:out
			value="${employee.nom} - ${employee.prenom} - ${employee.departement}"></c:out>
		<table border="1" cellpadding="5">
			<thead>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Departement</th>
	
				</tr>
			</thead>
			<tbody>
	
				<c:forEach var='employeEnCours' items='${employees}'>
					<c:if test="${employeEnCours.departement == employee.departement}">
						<tr>
							<td><c:out value="${employeEnCours.nom}"></c:out></td>
							<td><c:out value="${employeEnCours.prenom}"></c:out></td>
							<td><c:out value="${employeEnCours.departement}"></c:out></td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<form action="ListEmployeeServlet" method="post">
			<input type="submit" value="AddEmployee"> 
			<input type="submit" value="Logout">
		</form>
	
	</body>
</html>