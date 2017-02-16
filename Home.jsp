<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
 
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <ul class="nav navbar-nav navbar-right">
 	<li><a href="#"><span class="glyphicon glyphicon-bell"></span>Notifications</a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Register</a></li> <!-- this href should be same as in home controller -->
      <li><a href="Login""><span class="glyphicon glyphicon-log-in"></span> Login</a></li>	<!-- this href should be same as in home controller -->
      <li><a href="Logout"> Logout</a></li> <!-- step1: URL for logout page fo here it will go to home controller -->
    </ul>
  <h1 style="text-align:center" style ="font-size:250%">JEWELLARY CART </h1>
  
  <form class="navbar-form navbar-right">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Pick your jewel">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    
 
  
</div>
</nav>

  <nav class="navbar navbar-inverse"> <!-- navigation bar -->
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
    </div>
    <!-- dropdown menu for women -->
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">WOMEN<span class="caret"></span></a>
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
        </ul>
      </li>
     <!-- dropdown menu for men -->
      <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">MEN<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">BRACELETS</a></li>
          <li><a href="#">PENDENTS</a></li>
          <li><a href="#">CHAINS</a></li>
          <li><a href="#">RINGS</a></li>
          <li><a href="#">EARRINGS</a></li>
        </ul>
      </li>
      <!-- KIDS -->
         <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">KIDS<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">EARRINGS</a></li>
          <li><a href="#">CHAIN</a></li>
          <li><a href="#">RINGS</a></li>
          <li><a href="#">ANKLETS</a></li>
        </ul>
      </li>
       <!-- COLLECTIONS -->
          <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">COLLECTIONS<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">PEARLS</a></li>
          <li><a href="#">COCKTAILS</a></li>
          <li><a href="#">WEDDING JEWELLERY</a></li>
          <li><a href="#">DESIGNER JEWELLERY</a></li>
        </ul>
      </li>
     <!-- DROPDOWN FOR GIFTS -->
           <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">GIFTS<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">FOR HIM</a></li>
          <li><a href="#">FOR HER</a></li>
          <hr>
          <li><a href="#">FOR WEDDING</a></li>
        </ul>
      </li>
        <li><a href="#">OFFERS</a></li>
        
        
  <ul class="nav navbar-nav navbar-right">
  <li><a href="#">MY BOX</a></li>
    </ul>
  </div>
</nav>
  

<p>${message}</p> 
<c:if test="${isuserclickedLogin}">
<jsp:include page="Login.jsp"></jsp:include> <br> 
</c:if>

 <c:if test="${isuserclickedRegister}">
 <jsp:include page="Register.jsp"></jsp:include>
 </c:if>


<!-- this is for footer -->
<nav class="navbar-fixed-bottom">
  <div class="container-fluid">
  </div>
</nav>
  
 <div class="container">
  <div class="row">
    <div class="col-md-3">
      <h3>JEWELLERY CART</h3>
      <hr><div style="float:left;">
      <ul style="list-style: none;"><li><a href="#"> DOWNLOAD THE APP</a></li>
       <li><a href="#"> get it on google playstore</a></li>
        <li><a href="#"> download on appstore</a></li>
        </ul>
        </div>
    </div>
    
    <div class="col-md-3"> 
      <h3>ABOUT US </h3>
      <hr><div style="float:left;">
      <ul style="list-style: none;"><li><a href="#"> Track your orders</a></li>
       <li><a href="#"> About us</a></li>
        <li><a href="#"> Affiliate programs</a></li>
        <li><a href="#"> Partner with us</a></li>
        <li><a href="#"> Unsubscribe</a></li>
        </ul>
        </div>
    </div> 
    
    <div class="col-md-3"> 
      <h3>HELP</h3>
      <hr><div style="float:left;">
      <ul style="list-style: none;"><li><a href="#">PaymentsP</a></li>
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
      <h3>OUR POLICY </h3>
      <hr><div style="float:left;">
      <ul style="list-style: none;"><li><a href="#"> Shipping policy</a></li>
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
  
  <button type="button" class="btn btn-info btn-block">Back to top</button>
  <div class="container">
  <div class="row">
    <div class="col-md-3">
      <h3>SECURE SHOPPING</h3>
    </div>
    
    <div class="col-md-3"> 
      <h3>REWARDS BY </h3>
    </div> 
    
    <div class="col-md-3"> 
      <h3>PAYMENTS SYSTEMS</h3>
 </div>
 </div>
 </div>
 </div>
 <div>
 <center> <p > copyrights &copy;2017 &emsp;,All Rights Reserved</p></center>
  </div>
 </body>
 </html>