<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<STYLE>
body {
	 background-color: #f5f5f0;
}</STYLE>

</head>
<body>

	
<nav class="navbar navbar-default" style="background-color: #ebebe0;">
	 
	<div class="container-fluid">
		<h1><center>SUPPLIER MANAGEMENT</center></h1>

		<form class="navbar-form navbar-right"></form>
	</div>
</nav>

<form:form action="manage_supplier_create" commandName="supplier" method="post">
	<table>


		

		<tr>
			<td> ID</td>
			<c:choose>
			<c:when test="${!empty supplier.id }">
				<td><form:input type="text" path="id" name="id" disabled="true" readonly="true"/></td>
				</c:when>
				
				<c:otherwise>
					<td><form:input type="text" path="id"/></td>
				</c:otherwise>
			</c:choose>
		</tr>
		
		<tr>
			<form:input path="id" hidden="true"/>
				<td>NAME</td>
				<td><form:input type="text" path="name" name="name" required= "required" /></td>
		</tr>

		<tr>	
			<td>Address</td>
			<td><form:input type="text" name="address" path="address" required= "required"/></td>
		</tr>
		<tr>
			<td>Contact</td>
			<td><form:input type="text" name="contact" path="contact" required= "required" /></td>
		</tr>
		<tr>
		<tr>	
				<c:if test="${!empty category.name}">	
				<td><input type="submit" value="EDIT"></td>
				</c:if>
				
				<c:if test="${empty category.name}">
				<td><input type="submit" value="CREATE"></td>
				</c:if>
				</tr>
		</tr>
</table>
</form:form>
	
	<br>
	<hr>
	<br>
	
	<center>
		<h2>SUPPLIER LIST</h2>
	</center>
	<br>


	
	<c:if test="${!empty supplierList}">
		<table border="2px">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Address</th>
				<th>Contact</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
	
	
	<c:forEach items="${supplierList}" var="supplier" >
 				<tr> 

					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td>${supplier.contact}</td>
		
					<td><a href="manage_supplier_delete-${supplier.id}">Delete</a></td>
					<td><a href="manage_supplier_edit-${supplier.id }">Edit</a></td>

 				</tr>
			</c:forEach>
	</table>
	</c:if>
	
</body>
</html>
