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
	<div class="container-fluid">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-bell"></span>Notifications</a></li>
			<li><a href="admin"><span class="glyphicon glyphicon-user"></span>
					ADMIN PAGE</a></li>
			<li><a href="Register"><span
					class="glyphicon glyphicon-user"></span> Register</a></li>
			<!-- this href should be same as in home controller -->
			<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
			<!-- this href should be same as in home controller -->
			<li><a href="Logout"> Logout</a></li>
			<!-- step1: URL for logout page fo here it will go to home controller -->
		</ul>
		<h1 style="text-align: left" style="font-size: 250%"
			style="font-family: courier;">JEWELLARY CART</h1>
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
			<a class="navbar-brand" href="#"><span
				class="glyphicon glyphicon-home"></span></a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<MARQUEE WIDTH=150 HEIGHT=50 DIRECTION=LEFT>
				<font color=white>Today's special!</font>
			</MARQUEE>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">MY BOX<span
					class="glyphicon glyphicon-shopping-cart"></span></a></li>
		</ul>

		<!-- dropdown menu for women -->
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">WOMEN<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">EARRINGS</a></li>
					<li><a href="#">NECKLACE SETS</a></li>
					<li><a href="#">RINGS</a></li>
					<li><a href="#">PENDENTS</a></li>
					<li><a href="#">BRACELETS</a></li>
					<li><a href="#">TOE RINGS</a></li>
					<li><a href="#">ANKLETS</a></li>
					<li><a href="#">STATEMENT JEWELLERY</a></li>
					<li><a href="#">CHOKERS</a></li>
				</ul></li>

			<!-- dropdown menu for men -->
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">MEN<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">BRACELETS</a></li>
						<li><a href="#">PENDENTS</a></li>
						<li><a href="#">CHAINS</a></li>
						<li><a href="#">RINGS</a></li>
						<li><a href="#">EARRINGS</a></li>
					</ul></li>

				<!-- KIDS -->
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">KIDS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">EARRINGS</a></li>
							<li><a href="#">CHAIN</a></li>
							<li><a href="#">RINGS</a></li>
							<li><a href="#">ANKLETS</a></li>
						</ul></li>

					<!-- COLLECTIONS -->
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">COLLECTIONS<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">PEARLS</a></li>
								<li><a href="#">COCKTAILS</a></li>
								<li><a href="#">WEDDING JEWELLERY</a></li>
								<li><a href="#">DESIGNER JEWELLERY</a></li>
							</ul></li>

						<!-- DROPDOWN FOR GIFTS -->
						<ul class="nav navbar-nav">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">GIFTS<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">FOR HIM</a></li>
									<li><a href="#">FOR HER</a></li>
									<hr>
									<li><a href="#">FOR WEDDING</a></li>
								</ul></li>

							<!-- this is for offers in nav bar -->
							<li><a href="#">OFFERS</a></li>
	</div>
	</nav>


	<p>${message}</p>
	<c:if test="${isuserclickedLogin}">
		<jsp:include page="Login.jsp"></jsp:include>
		<br>
	</c:if>

	<c:if test="${isuserclickedRegister}">
		<jsp:include page="Register.jsp"></jsp:include>
	</c:if>

	<!-- for dynamic images -->
	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img src="<c:url value="/resources/Images/dynamic images/1.jpg"/>"
						class="img-rounded" alt="1" width="500" height="300" />
					<!-- <div class="carousel-caption">
						<p .carousel-caption
							style="font-family: Garamond; font-size: 3em; color: red;">
							<em>WELCOME!</em>
						</p>
					</div> -->
				</div>

				<div class="item">
					<img src="<c:url value="/resources/Images/dynamic images/2.jpg"/>"
						class="img-rounded" alt="2" width="500" height="300">
					<!-- <div class="carousel-caption">
						<p .carousel-caption
							style="font-family: Garamond; font-size: 3em; color: red;">
							<em>Say it through Jewels</em>
						</p>

					</div> -->
				</div>

				<div class="item">
					<img src="<c:url value="/resources/Images/dynamic images/3.jpg"/>"
						class="img-rounded" alt="3" width="500" height="300">
				</div>
				
				<div class="item">
					<img src="<c:url value="/resources/Images/dynamic images/4.jpg"/>"
						class="img-rounded" alt="4" width="500" height="300">
				</div>
				
			</div>


			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
	
	
	<!-- this is for footer -->
	<nav class="navbar-fixed-bottom">
	<div class="container-fluid"></div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<h3>JEWELLERY CART</h3>
				<hr>
				<div style="float: left;">
					<ul style="list-style: none;">
						<li><a href="#"> DOWNLOAD THE APP</a></li>
						<li><a href="#"> get it on google playstore</a></li>
						<li><a href="#"> download on appstore</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-3">
				<h3>ABOUT US</h3>
				<hr>
				<div style="float: left;">
					<ul style="list-style: none;">
						<li><a href="#"> Track your orders</a></li>
						<li><a href="#"> About us</a></li>
						<li><a href="#"> Affiliate programs</a></li>
						<li><a href="#"> Partner with us</a></li>
						<li><a href="#"> Unsubscribe</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-3">
				<h3>HELP</h3>
				<hr>
				<div style="float: left;">
					<ul style="list-style: none;">
						<li><a href="#">Payments</a></li>
						<li><a href="#"> Saved cards</a></li>
						<li><a href="#"> Bulk orders</a></li>
						<li><a href="#"> International orders</a></li>
						<li><a href="#"> contact us</a></li>
						<li><a href="#"> FAQ</a></li>
						<li><a href="#"> Report us</a></li>
						<li><a href="#"> Cancellation and Returns</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-3">
				<h3>OUR POLICY</h3>
				<hr>
				<div style="float: left;">
					<ul style="list-style: none;">
						<li><a href="#"> Shipping policy</a></li>
						<li><a href="#"> Privacy policy</a></li>
						<li><a href="#"> Terms of use</a></li>
						<li><a href="#"> Returns policy </a></li>
						<li><a href="#"> Promotions policy </a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container">

		<button type="button" class="btn btn-info btn-block" href="home">Back to top</button>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h3>SECURE SHOPPING</h3>
				</div>

				<div class="col-md-3">
					<h3>REWARDS BY</h3>
				</div>

				<div class="col-md-3">
					<h3>PAYMENTS SYSTEMS</h3>
				</div>
			</div>
		</div>
	</div>

	<div>
		<center>
			<p>copyrights &copy;2017 &emsp;,All Rights Reserved</p>
		</center>
	</div>



</body>
</html>
