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
		<h2><center>PRODUCT MANAGEMENT</center></h2>

		<form class="navbar-form navbar-right"></form>
	</div>
</nav>



	<form:form action="manage_product_create" commandName="product" method="post" enctype="multipart/form-data"> 

		<table>
		

			<tr>
			
			<td>PRODUCT ID</td>
			<c:choose>
			<c:when test="${!empty product.id }">
				<td><form:input type="text" path="id" name="id" disabled="true" readonly="true"/></td>
				</c:when>
				
				<c:otherwise>
					<td><form:input type="text" path="id"/></td>
				</c:otherwise>
			</c:choose>
			</tr>
			
			<tr>
				<form:input path="id" hidden="true"/>
				<td>PRODUCT NAME</td>
				<td><form:input type="text" path="name" name="name" required= "required" /></td>
			</tr>
				
				<tr>
				<td>PRICE</td>
				<td><form:input type="text" path="price" name="price" required= "required"/></td>
				</tr>
				
				<tr>
				<td>DESCRIPTION</td>
				<td><form:input type="text" path="description" name="description" required= "required"/></td>
				</tr>
				
				<tr>
				<td>CATEGORY</td>
                <td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name"/></td>
                </tr>
                
                <tr>
				<td>SUPPLIER</td>
                <td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name"/></td>
                </tr>
                
                <tr>
				<td>IMAGE</td>
				<td> <form:input path="image" type="file"/></td>
				</tr>
				
				
				<tr>	
				<c:if test="${!empty product.name}">	
				<td><input type="submit" value="EDIT"></td>
				</c:if>
				
				<c:if test="${empty product.name}">
				<td><input type="submit" value="CREATE"></td>
				</c:if>
				</tr>
		


		</table>

	</form:form>


	<br>
	<hr>
	<br>

	<center>
		<h2>PRODUCT LIST</h2>
	</center>
	<br>

	<c:if test="${!empty productList}">

		<table border="2px">
			<tr>
				<th>ID</th>
				<th>Name</th>
                <th>Price</th>
				<th>Description</th>
                <th>Categories</th>
                <th>Suppliers</th>
				<th>Product Image</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
                    <td>${product.category_name}</td>
                    <td>${product.supplier_name}</td>
                    <td><img src="<c:url value="/resources/Images/${product.id}.jpg"/>"/></td>
					<td><a href="manage_product_edit-${product.id}"> Edit</a></td>
					<td><a href="manage_product_delete-${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>


	</c:if>
	
	</body>
</html>