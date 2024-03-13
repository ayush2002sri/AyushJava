package com.app;

import javax.servlet.*;
import java.sql.*;

public class Listener implements ServletContextListener {
	Connection cn;

	public void contextInitialized(ServletContextEvent sce) {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/inventory_management", "root", "boot");
			ServletContext website = sce.getServletContext();
			website.setAttribute("CONN", cn);
		} catch (Exception e) {
			javax.swing.JOptionPane.showMessageDialog(null, "Reason of error:" + e.getMessage());
		}
	}
	public void contextDestroyed(ServletContextEvent sce) {
		try {
			if (!cn.isClosed()) {
				cn.close();
			}
		} catch (Exception e) {
			javax.swing.JOptionPane.showMessageDialog(null, "Reason of error:" + e.getMessage());
		}
	}
}
