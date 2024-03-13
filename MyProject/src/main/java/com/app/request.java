package com.app;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class request extends HttpServlet {
	Connection cn;

	public void init(ServletConfig sc) throws ServletException {

		super.init(sc);
		cn = (Connection) sc.getServletContext().getAttribute("CONN");
	}


	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		
		try {
			
			String _name = req.getParameter("text_name");
			String _empId = req.getParameter("text_empId");
			String _product = req.getParameter("prod_category");
			String _reason = req.getParameter("text_reason");
			String _returnID = req.getParameter("text_returnId");

			PreparedStatement ps = cn.prepareStatement("insert into request values(?,?,?,?,?,?)");
			ps.setString(1, _name);
			ps.setString(2, _empId);
			ps.setString(3, _product);
			ps.setString(4, _reason);
			ps.setString(5, _returnID);
			ps.setString(6, "Pending");

			int a = ps.executeUpdate();
			if (a > 0) {
				/*
				 * out.println("Request Sent to Admin"); RequestDispatcher rd =
				 * req.getRequestDispatcher("User.jsp"); rd.include(req, res);
				 */
			res.sendRedirect("/MyProject/User.jsp");

			}

		} catch (Exception e) {

		}
		out.close();
	}

}
