<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<center><h3>Login here</h3></center>
</head>
<body>
<form action="validate" method="Post">
 <table>
     <tr>
         
        <td> <label>First Name: </label></td>
         <td><input type="text" name="Name"></input> <br></br> </td>
</tr>
<tr>
         <td> <label>Email ID</label></td>
 <td><input type="text" name="Username"></input> <br></br></td>
</tr>
    <tr>
         <td> <label>Password</label></td>
               <td><input type="password" name="Password"></input> <br></br> </td>

    
        </tr>
	  </table>
	  <input type="submit" value ="Register">
	   &emsp; <input type="submit" value ="Forgot Password">
	   </form>
</body>
</html>