package com.app;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class Registration extends HttpServlet {
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
			String _name = req.getParameter("txt_name");
			String _email = req.getParameter("txt_email");
			String _password = req.getParameter("txt_password");
			String _confirmpassword = req.getParameter("txt_confirmpassword");
			String _securityQues = req.getParameter("txt_securityQues");
			String _securityAns = req.getParameter("txt_securityAns");
			CallableStatement ps = cn.prepareCall("{call signup(?,?,?,?,?,?,?)}");
			ps.setString(1, _name);
			ps.setString(2, _email);
			ps.setString(3, _password);
			ps.setString(4, _confirmpassword);
			ps.setString(5, _securityQues);
			ps.setString(6, _securityAns);
			ps.setString(7, "Employee");
			ps.execute();
			HttpSession sess=req.getSession();
			sess.setAttribute("msg","USER SUCCESSFULLY REGISTERED");
			res.sendRedirect("registration.jsp");
			//javax.swing.JOptionPane.showMessageDialog(null, "USER SUCCESSFULLY REGISTERED");
			//RequestDispatcher rs = req.getRequestDispatcher("login2.jsp");
			//rs.forward(req, res);
		} catch (Exception e) {
		}
		out.close();
	}
}
