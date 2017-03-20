<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%> <!-- here we should inject the spring form the purpose of this is to bind the data together as an object  -->
	<!-- initially call tag library  n the enter the uri(universal resource indicator) ="(press ctrl+space)" ull get the spring frame work after inserting the spring form add prefix -->
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<center>
		<h3>Register Here</h3>
	</center>
<form:form method="POST" commandName="user" action="Register-add" role="form"> <!-- add from table mention the method as get or post ,post is recommend because the it will not show in url  -->
<table>

	<tr>
		<td><label>User ID: </label></td>
		<td><form:input size="40" path="id" type="text" required="true"/> <br></br></td>
		<!-- the input should have prefix as the form:input since spring from is injected path should be same as in the use domain  -->
		<!-- add a required = true so that empty registration will not get saved   -->	
	</tr>

	<tr>
		<td><label>Name: </label></td>
		<td><form:input size="40" path="name" type="text" required= "true"/><br></br></td>
	</tr>

	<tr>
		<td><label>Password: </label></td>
		<td><form:input size="40" path="password" type="password" required= "true"/> <br></br></td>

	</tr>

	<tr>
		<td><label>Contact: </label></td>
		<td><form:input size="40" path="contact" type="text" required= "true"/> <br></br></td>
	</tr>

	<tr>
		<td><label>Email_ID </label></td>
		<td><form:input size="40" type="text" path="Email_id" required="true"/></td>
	</tr>
	<tr>
	<td><input type="submit" value="Register"/></td>
	<td><input type="reset" value="RESET"/></td>
	</tr>

</table>
	</form:form>
<br>

</body>
</html>