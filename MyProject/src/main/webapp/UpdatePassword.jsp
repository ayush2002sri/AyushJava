
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>
<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td colspan="2" align="center" valign="middle" height="400px">
				<%
				String _receivedUid = request.getParameter("hid_uid");
				String _password = request.getParameter("txt_pass1");
				String _password2 = request.getParameter("txt_pass2");
				//out.println("Received Userid::"+_receivedUid);
				//out.println("<br>");
				//out.println("Received Password::"+_password);
				Connection cn = (Connection) application.getAttribute("CONN");
				CallableStatement ps = cn.prepareCall("{ call update_password(?,?,?) }");
				ps.setString(1, _receivedUid);
				ps.setString(2, _password);
				ps.setString(3, _password2);
				ps.execute();
				%>
				<h3 align="center">
					<font face="consolas" color="red">Password Updated! <a
						href="index.jsp">Click Here to Login</a></font>
				</h3> <%
 %>
			</td>
		</tr>
	</table>
</body>
</html>