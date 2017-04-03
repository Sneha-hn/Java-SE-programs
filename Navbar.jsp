<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NAVIGATION BAR</title>
</head>
<body>
<nav class="navbar navbar-default" style="background-color: #ebebe0;">
	<div class="container-fluid">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-bell"></span>Notifications</a></li>
<!-- 			<li><a href="admin"><span class="glyphicon glyphicon-user"></span> -->
<!-- 					ADMIN PAGE</a></li> -->
<!-- 			<li><a href="Register"><span -->
<!-- 					class="glyphicon glyphicon-user"></span> Register</a></li> -->
			<!-- this href should be same as in home controller -->
<!-- 			<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> -->
<!-- 					Login</a></li> -->
			<!-- this href should be same as in home controller -->
<!-- 			<li><a href="Logout"> Logout</a></li> -->
			<!-- step1: URL for logout page fo here it will go to home controller -->
			
			
			<c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:if test="${pageContext.request.userPrincipal.name != 'SN1703001'}">
      <li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> CART </a>${cartSize}</li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name  == 'SN1703001'}">
       <li><a href="<c:url value="/admin" />"><span class="glyphicon glyphicon-menu-hamburger"></span> VIEW ALL </a></li>
       </c:if>
       <li><a>HELLO, ${pageContext.request.userPrincipal.name}</a></li>
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
       </c:if>
        </ul>
          <ul class="nav navbar-nav navbar-right">
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> LOGIN </a></li>
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
       </c:if>
     </ul>
			
		<h1 style="font-family:Algerian;" style="text-align:left" style="font-size:250%" >JEWELLARY CART</h1>
	</div>
	</nav>

	<form class="navbar-form navbar-right">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Pick your jewel">
			<div class="input-group-btn">
				<button class="btn btn-default btn-md" type="submit">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>
	</form>


	<nav class="navbar navbar-inverse"> <!-- navigation bar -->
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home"><span
				class="glyphicon glyphicon-home"></span></a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<MARQUEE WIDTH=150 HEIGHT=50 DIRECTION=LEFT>
				<font color=white>Today's special!</font>
			</MARQUEE>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">MY BOX<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
		</ul>

	 <!-- dropdown menu for category-->
	<c:forEach items="${categoryList}" var="category">
	<ul class="nav navbar-nav">
	<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href=${category.name}>${category.name}<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<c:forEach items="${category.products}" var="product">
	<li><a style="color:#000000" href="<c:url value ='product_get-${product.id}'/>">${product.name} </a>
	</c:forEach>
	</ul>
	</li>
	</ul>
	</c:forEach> 
	
	 
	 
	 
<!-- 		<ul class="nav navbar-nav"> -->
<!-- 			<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 				data-toggle="dropdown" href="#">WOMEN<span class="caret"></span></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#">EARRINGS</a></li> -->
<!-- 					<li><a href="#">NECKLACE SETS</a></li> -->
<!-- 					<li><a href="#">RINGS</a></li> -->
<!-- 					<li><a href="#">PENDENTS</a></li> -->
<!-- 					<li><a href="#">BRACELETS</a></li> -->
<!-- 					<li><a href="#">TOE RINGS</a></li> -->
<!-- 					<li><a href="#">ANKLETS</a></li> -->
<!-- 					<li><a href="#">STATEMENT JEWELLERY</a></li> -->
<!-- 					<li><a href="#">CHOKERS</a></li> -->
<!-- 				</ul></li> -->

<!-- 			dropdown menu for men -->
<!-- 			<ul class="nav navbar-nav"> -->
<!-- 				<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 					data-toggle="dropdown" href="#">MEN<span class="caret"></span></a> -->
<!-- 					<ul class="dropdown-menu"> -->
<!-- 						<li><a href="#">BRACELETS</a></li> -->
<!-- 						<li><a href="#">PENDENTS</a></li> -->
<!-- 						<li><a href="#">CHAINS</a></li> -->
<!-- 						<li><a href="#">RINGS</a></li> -->
<!-- 						<li><a href="#">EARRINGS</a></li> -->
<!-- 					</ul></li> -->

<!-- 				KIDS -->
<!-- 				<ul class="nav navbar-nav"> -->
<!-- 					<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 						data-toggle="dropdown" href="#">KIDS<span class="caret"></span></a> -->
<!-- 						<ul class="dropdown-menu"> -->
<!-- 							<li><a href="#">EARRINGS</a></li> -->
<!-- 							<li><a href="#">CHAIN</a></li> -->
<!-- 							<li><a href="#">RINGS</a></li> -->
<!-- 							<li><a href="#">ANKLETS</a></li> -->
<!-- 						</ul></li> -->

<!-- 					COLLECTIONS -->
<!-- 					<ul class="nav navbar-nav"> -->
<!-- 						<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 							data-toggle="dropdown" href="#">COLLECTIONS<span -->
<!-- 								class="caret"></span></a> -->
<!-- 							<ul class="dropdown-menu"> -->
<!-- 								<li><a href="#">PEARLS</a></li> -->
<!-- 								<li><a href="#">COCKTAILS</a></li> -->
<!-- 								<li><a href="#">WEDDING JEWELLERY</a></li> -->
<!-- 								<li><a href="#">DESIGNER JEWELLERY</a></li> -->
<!-- 							</ul></li> -->

<!-- 						DROPDOWN FOR GIFTS -->
<!-- 						<ul class="nav navbar-nav"> -->
<!-- 							<li class="dropdown"><a class="dropdown-toggle" -->
<!-- 								data-toggle="dropdown" href="#">GIFTS<span class="caret"></span></a> -->
<!-- 								<ul class="dropdown-menu"> -->
<!-- 									<li><a href="#">FOR HIM</a></li> -->
<!-- 									<li><a href="#">FOR HER</a></li> -->
<!-- 									<hr> -->
<!-- 									<li><a href="#">FOR WEDDING</a></li> -->
<!-- 								</ul></li> -->

<!-- 							this is for offers in nav bar -->
<!-- 							<li><a href="#">OFFERS</a></li>  -->
	</div> 
	</nav>
</body>
</html>