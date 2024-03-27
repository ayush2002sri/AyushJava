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
<h1>Contact Form</h1>
<form action="formData" method="post">
Name:
<input type="text" name="name"><br>
Email:
<input type="email" name="email"><br>
Contact:
<input type="number" name="contact"><br>
<input type="submit" value="submit">
</form>
<hr>
<marquee>${Message}</marquee>
</body>
</html>