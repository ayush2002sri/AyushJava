package com.app;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class assets extends HttpServlet {
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
			String _category = req.getParameter("prod_category");
			String _company = req.getParameter("prod_company");
			String _prodID = req.getParameter("prod_id");
			String _status = req.getParameter("prod_status");

			PreparedStatement ps = cn.prepareStatement("insert into all_assets values(?,?,?,?)");
			ps.setString(1, _category);
			ps.setString(2, _company);
			ps.setString(3, _prodID);
			ps.setString(4, _status);

			int a = ps.executeUpdate();
			if (a > 0) {
				out.println("Asset Record Inserted");
				res.sendRedirect("/MyProject/add_stock.jsp");
			}
			else {
				out.println("Asset Record not Inserted");
			}
		} catch (Exception e) {

		}
		out.close();
	}

}
