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
	 
	<div class="container">
		<h2><center>CATEGORY MANAGEMENT</center></h2>

		<form class="navbar-form navbar-right"></form>
	</div>
</nav>

	<form:form action="manage_category_create" commandName="category"
		method="post">

		<table>

			<tr>
			<td>CATEGORY ID</td>
			<c:choose>
			<c:when test="${!empty category.id }">
				<td><form:input type="text" path="id" name="id" disabled="true" readonly="true" /></td>
				</c:when>
				
				<c:otherwise>
					<td><form:input type="text" path="id" required= "required"/></td>
				</c:otherwise>
			</c:choose>
			</tr>
				
				<tr>
				<form:input path="id" hidden="true"/>
				<td>CATEGORY NAME</td>
				<td><form:input type="text" path="name" name="name" required= "required"/></td>
				</tr>
				
				<tr>
				<td>DESCRIPTION</td>
				<td><form:input type="text" path="description" required= "required"
						name="description" /></td>
						</tr>
						
				<tr>	
				<c:if test="${!empty category.name}">	
				<td><input type="submit" value="EDIT"></td>
				</c:if>
				
				<c:if test="${empty category.name}">
				<td><input type="submit" value="CREATE"></td>
				</c:if>
				</tr>


		</table>

	</form:form>


	<br>
	<hr>
	<br>

	<center>
		<h2>CATEGORY LIST</h2>
	</center>
	<br>

	<c:if test="${!empty categoryList}">

		<table border="2px">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="manage_category_edit-${category.id}"> Edit</a></td>
					<td><a href="manage_category_delete-${category.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>


	</c:if>



</body>
</html>








