<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<style>
body{
background-image: url(resources/images/cart9.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;

}
th{
    color:white;
    background-color:black;
    
}

table, th, td {
    border: 1px solid black;
    align:center;
}

h2{
color:black;
font-family: "Times New Roman", Times, serif;
}


</style>
<body>

<h1 style="color:black"><center>REVIEW ORDER</center></h1>
<div class="container" style="align:center; margin: 20px 100px 0px 400px">
	
	<c:if test="${!empty cartList}">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
					<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> REVIEW ORDER</h5>
							</div>
							<div class="col-xs-6">
								<a href="<c:url value="/myCart" />" type="button" class="btn btn-primary btn-sm btn-block">
									<span class="glyphicon glyphicon-share-alt"></span> Edit cart
								</a>
							</div>
						</div>
					</div>
				</div>
			<div class="panel-body">
				<c:forEach items="${cartList}" var="cart">
					<div class="row">
						<div class="col-xs-3"><img style="width:150px;height:100px" src="<c:url value="/resources/images/${cart.p_id}.jpg"/>"/>
						</div>
						<div class="col-xs-3">
							<h4 class="product-name"><strong>${cart.p_name}</strong></h4>
							<h4><small>Quantity:${cart.quantity}</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h4 class="text-right"><strong>${cart.price}</strong></h4>
								
							</div>
							
							
						</div>
					</div>
						<hr>
				</c:forEach>
				
					
					
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right"> Total: ${sum}</h4>
						   </div>
						<div class="col-xs-3">
							<a href="payment" type="button" class="btn btn-success btn-block">
								Proceed to Pay
							</a>
						</div>
					</div>
     				</div>  
			</div>
		</div>
	</div>
	</c:if>
</div>
<br>
<br>
<br>
<br>
​

</body>
</html>