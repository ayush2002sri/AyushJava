package com.app;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class faulty extends HttpServlet {
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
			String _prodID = req.getParameter("prod_id");
			String _product = req.getParameter("prod_category");
			String _problem = req.getParameter("problem");

			PreparedStatement ps = cn.prepareStatement("insert into faulty_products values(?,?,?)");
			ps.setString(1, _prodID);
			ps.setString(2, _product);
			ps.setString(3, _problem);

			PreparedStatement ps2 = cn.prepareStatement("update all_assets set Status='Faulty' where Product_ID=? ");
			ps2.setString(1, _prodID);
			ps2.executeUpdate();
			int a = ps.executeUpdate();
			if (a > 0) {
				out.println("Product Added to Faulty");
				res.sendRedirect("/MyProject/faulty.jsp");
			}
			else {
				out.println("UNABLE TO ADD PRODUCT TO FAULTY");
			}
		} catch (Exception e) {
			
		}
		out.close();
	}
}
