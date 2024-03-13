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
PreparedStatement ps=con.prepareStatement("update request set Status ='Approved' where Employee_Id=?");
ps.setString(1,id);
ps.executeUpdate();
%>
<%
String name=request.getParameter("name");
String problem=request.getParameter("problem");
String Prod=request.getParameter("Prod");
ps=con.prepareStatement("insert into faulty_products values(?,?,?)");
ps.setString(1,Prod);
ps.setString(2,name);
ps.setString(3,problem);
ps.execute();
%>
<%
ps=con.prepareStatement("update  all_assets set Status='Faulty' where Product_Id=?");
ps.setString(1,id);
ps.executeUpdate();
session.setAttribute("msg","Request Approved and the Product has been added to Faulty Products");
response.sendRedirect("new-request.jsp");
%>