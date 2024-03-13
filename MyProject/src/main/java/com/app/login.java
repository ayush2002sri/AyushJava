package com.app;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
public class login extends HttpServlet {
Connection cn;
public void init(ServletConfig sc) throws ServletException {
super.init(sc);
cn = (Connection) sc.getServletContext().getAttribute("CONN");
}
public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
PrintWriter out = res.getWriter();
try {
if (!cn.isClosed()) {
out.println("DATABASE SERVER CONNECTED");
}
String _email = req.getParameter("txt_email");
String _password = req.getParameter("txt_password");
PreparedStatement ps = cn.prepareStatement("select * from login where User_id=? and Password =?;");
ps.setString(1, _email);
ps.setString(2, _password);
HttpSession session = req.getSession();
ResultSet rs = ps.executeQuery();
if (rs.next()) {
session.setAttribute("uid", _email);
session.setAttribute("ps", _password);
if (rs.getString(3).equals("Employee")) {
res.sendRedirect("/MyProject/User.jsp");
} else {
RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
rd.forward(req, res);
}
} else {
	RequestDispatcher rdi = req.getRequestDispatcher("login2.jsp?login=false");
	rdi.forward(req, res);
		}
		} catch (Exception e) {
		}
		out.close();
	}
}
