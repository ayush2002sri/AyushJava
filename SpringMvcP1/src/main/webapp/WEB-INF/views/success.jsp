<%@page import="com.springmvc.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
User name is: ${user.name} <!-- yaha wo likhenge jo User entity class me likha hai -->
<br>
Email Is : ${user.email}
<br>
Contact Is: ${user.contact}
 <hr>
 <marquee>${Message}</marquee>
</body>
</html>