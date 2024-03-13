
<%@page import ="java.sql.*"%>
<%
Connection con = (Connection) application.getAttribute("CONN");
%>
<%

String i=request.getParameter("txt_email");
PreparedStatement ps=con.prepareStatement("select * from registration where Email=?");
ps.setString(1,i);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	
}
else{
	out.println("This Email is Not Registered !");
}

%>