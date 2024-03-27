<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
this is home page
<%
String name=(String)request.getAttribute("name");
Integer id=(Integer)(request.getAttribute("Id"));
List<String> list=(List<String>)request.getAttribute("frnd");
%>
<h1>
My Name is :<%=name%>
ID is :<%=id%>
</h1>
<%
for(String s:list){
out.println(s);
}%>
</body>
</html>
