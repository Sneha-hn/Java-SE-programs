<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery-3.2.0.min.js"></script>

<script src="resources/js/bootstrap.min.js"></script>


<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

body {
	background-color: #f5f5f0;
}
</style>

</head>

<body>
	<h2>${success}</h2>

	<nav class="navbar navbar-default" style="background-color: #ebebe0;">

	<div class="container">
		<ul class="nav navbar-nav navbar-right">
			<!-- this href should be same as in home controller -->
			<li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
			<!-- step1: URL for logout page fo here it will go to home controller -->
		</ul>
		<h1 style="text-align: left" style="font-size:250%">JEWELLARY
			CART</h1>

		<form class="navbar-form navbar-right"></form>
	</div>
	</nav>

	<div class="container">
		<!-- <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8"><h1 style="text-align: center; color: #004d13"><font face="Vivaldi"><b>Admin Organization Page</b></font></h1></div>
  <div class="col-sm-2"></div>
</div> -->
		<br>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<a class="btn btn-default btn-lg btn-block" href="category">MANAGE CATEGORIES</a>
			</div>
			<div class="col-sm-4"></div>
			<div class="col-sm-4"><a class="btn btn-default btn-lg btn-block" href="supplier">MANAGE SUPPLIERS</a>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<a class="btn btn-default btn-lg btn-block" href="product">MANAGE PRODUCTS</a>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>


</body>
</html>
