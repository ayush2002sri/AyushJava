
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% 
		String uid=request.getParameter("uid");

		Connection cn=(Connection)application.getAttribute("CONN");
		
		
		PreparedStatement ps=cn.prepareStatement("select Security_Question from registration where Email=?");
		ps.setString(1, uid);
		ResultSet rs=ps.executeQuery();
		
		
		if(rs.next())
			{
			
			%>
			<font face="verdana" color="red"><%=rs.getString(1) %></font>
			<br>
			<input type="text" name="txt_answer" placeholder="Answer" class="form-control mt-2">
			<br>
			<input type="submit" value="Recover Password" class="bg-dark text-white p-2" >
			<%
			}
		else
		{
			%>
					<font color="red">This Email is not Registered !</font>
			<%
		}
%>