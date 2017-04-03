<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url(resources/images/cart9.jpg);
background-size: cover;                      
background-repeat:no-repeat;

}

</style>
</head>
<body>
 <div style="color:#000000;margin:40px 0px 0px 100px">
    <a style="color:#000000;font-size:2.0em" href="onLoad"><span class="glyphicon glyphicon-home"></span></a>
   </div>
<%--product list declartion  --%>	
			
			<div class="container" style="align:center;margin:30px 0px 0px 180px">
			<div class="row">
				<c:if test="${!empty selectedProduct.name}">
				  <div class="col-md-10 col-md-offset-1">

                    <div class="panel panel-info">
                     <div class="panel-body">
					<table class="table table-striped table-bordered table-list">
					  
						<tr>
<!-- 							<th align="center" width="125" ><font color="grey">Product ID</font></th> -->
							<th align="center" width="175"><font color="black">Product Name</font></th>
							<th align="center" width="190"><font color="black">Product Description</font></th>
							<th align="center" width="90"><font color="black">Price</font></th>
							<th align="center" width="150"><font color="black">Product Category</font></th>
							<th align="center" width="150"><font color="black">Product Supplier</font></th>
							<th align="center" width="150"><font color="black">Product Image</font></th>
                           
						</tr>
						<tr>
<%-- 							<td align="left" ><font color="grey">${selectedProduct.id}</font></td> --%>
							<td align="left" ><font color="black">${selectedProduct.name}</font></td>
							<td align="left" ><font color="black">${selectedProduct.description}</font></td>
							<td align="left" ><font color="black">${selectedProduct.price}</font></td>
							<td align="left" ><font color="black">${selectedProduct.category.name}</font></td>
							<td align="left" ><font color="black">${selectedProduct.supplier.name}</font></td>
							<td align="left" ><img src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>" /></td>
						
<%-- 							<td align="left" ><a href="<c:url value='cart/add/${selectedProduct.p_id}' />"><button type="button" class="btn btn-primary">Add to Cart</button></a></td> --%>
							
						</tr>
						
					</table>
					<hr>
					</div>
					<div class="panel-footer">
					<div class="row text-center">
						
						<div class="col-xs-3">
							<a style="align:right" href="<c:url value='cart/add/${selectedProduct.id}' />"><button  type="button" class="btn btn-primary">Add to Cart</button></a>
						</div>
					</div>
     				</div>  
					</div>
					</div>
				</c:if>
			</div>
</div>

</body>
</html>