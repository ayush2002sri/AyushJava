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
String name=request.getParameter("name");
PreparedStatement ps=con.prepareStatement("delete from faulty_products where Product_Id=?");
ps.setString(1,id);
ps.executeUpdate();
%>
<%
PreparedStatement ps2=con.prepareStatement("insert into scrap_material values (?,?)");
ps2.setString(1,name);
ps2.setString(2,id);
ps2.execute();

response.sendRedirect("/MyProject/faulty.jsp");
%>
<%

 ps=con.prepareStatement("delete from all_assets where Product_Id=?");
ps.setString(1,id);
ps.executeUpdate();
%>
