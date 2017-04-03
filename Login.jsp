<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery-3.2.0.min.js"></script>

<script src="resources/js/bootstrap.min.js"></script>


<STYLE>
body {
	 background-color: #f5f5f0;
}</STYLE>
</head>
<body>

<jsp:include page="Navbar.jsp"/>

<h2><center>LOGIN</center></h2>

	<form action="<c:url value='j_spring_security_check'/>" method="Post">
	
	
	<c:if test="${not empty loginerror }">
	<div class ="alert alert-success">
	<p class="loginerror" style "align:center">${loginerror}</p>
	</div>
	</c:if>
	
	<c:if test="${not empty loginmsg}">
	<div class="alert alert-success">
	<p class="loginmsg" style="align:center">${loginmsg}</p>
	</div>
	</c:if>
	
		<table>
			
			<tr>
				<td><label>Email ID</label></td>
				<td><input type="text" name="username"></input> <br></br></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><input type="password" name="password"></input> <br></br></td>


			</tr>
		</table>
		<input type="submit" value="LOGIN"> &emsp; <input
			type="submit" value="Forgot Password">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
</body>
</html>