
<%@page import ="java.sql.*"%>
<%
Connection con = (Connection) application.getAttribute("CONN");
%>
<%
String i=request.getParameter("prod_id");
PreparedStatement ps=con.prepareStatement("select * from all_assets where Product_ID=? and Status='New'");
ps.setString(1,i);
ResultSet rs=ps.executeQuery();
if(rs.next()){
}
else{
	out.println("Unsuccesful Attempt ! Try Another ID");
}
%>
