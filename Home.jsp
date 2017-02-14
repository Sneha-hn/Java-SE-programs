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



<div class="container">
  <h2>OUR POLICY</h2>
  <ul class="list-group">
    <li class="list-group-item">Shipping policy</li>
    <li class="list-group-item">Privacy policy</li>
    <li class="list-group-item">Terms and conditions</li>
     <li class="list-group-item">Return policy</li> 
     <li class="list-group-item">Promotion policy</li>
  </ul>
  </div>
  
   <div class="container">
  <h2>HELP</h2>
  <ul class="list-group">
    <li class="list-group-item">Payments</li>
    <li class="list-group-item">Saved cards</li>
    <li class="list-group-item">Bulk orders</li>
    <li class="list-group-item">International orders</li>
    <li class="list-group-item">contact us</li>
    <li class="list-group-item">FAQ</li>
    <li class="list-group-item">report us</li>
    <li class="list-group-item">cancellation and returns</li>
  </ul>
</div>

  <div class="container">
  <h2>ABOUT JEWELLARYCART</h2>
  <ul class="list-group">
    <li class="list-group-item">Track your order</li>
    <li class="list-group-item">About us</li>
    <li class="list-group-item">Affiliate prigram</li>
    <li class="list-group-item">Partner with us</li>
    <li class="list-group-item">Unsubscribe</li>
    
  </ul>
  </ul>
</div>
 
</body>
</html>