<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
if (session.getAttribute("uid") == null || session.getAttribute("ps") == null) {
	response.sendRedirect("login2.jsp");
}
%>
<%@ page import="java.sql.*"%>
<%
Connection con = (Connection) application.getAttribute("CONN");
%>
<%
String id=request.getParameter("id");
PreparedStatement ps=con.prepareStatement("delete from faulty_products where Product_Id=?");
ps.setString(1,id);
ps.executeUpdate();
%>
<%
 ps=con.prepareStatement("update  all_assets set Status='New' where Product_Id=?");
ps.setString(1,id);
ps.executeUpdate();
response.sendRedirect("/MyProject/faulty.jsp");
 %>