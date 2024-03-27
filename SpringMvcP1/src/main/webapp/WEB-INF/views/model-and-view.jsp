<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>
<%
/* String name=(String)request.getAttribute("name");
Integer rollNo=(Integer)request.getAttribute("rollNum");
Date date=(Date)request.getAttribute("date"); 
*/
%>
<%-- <h1>hello <%=name%></h1>
<h1>Roll Number is: <%=rollNo%></h1>
Date is :<%=date%> --%>
<h1>Hello ${name}</h1>
<h1>Roll No. ${rollNum}</h1>
<h1>Date ${date}</h1>
<c:forEach var="item" items="${marks}">
<h3>${item}</h3>
<%= %>
</c:forEach>
</body>
</html>
