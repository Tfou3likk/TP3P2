<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Employee</title>
	</head>
	<body>
	
		<form action = 'AddEmployeeServlet' method = 'post' >
		
			<label>Username</label>
			<input type = 'text' name = 'username'><br>
			<label>Firstname</label>
			<input type = 'text' name = 'prenom'><br>
			<label>Lastname</label>
			<input type = 'text' name = 'nom'><br>
			<label>Departement</label>
			<input type = 'text' name = 'departement'><br>
			<label>Mot de passe</label>
			<input type = 'text' name = 'password'><br>
			<input type = 'submit' name="AddEmployee" value = 'add'>
			<input type = 'submit' name= 'Welcome' value = 'Retour a la page Welcome'>
			
		</form>

	</body>
</html>