package com.app;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

public class new_assigning extends HttpServlet {
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
			String _empId = req.getParameter("txt_empId");
			String _MTRId = req.getParameter("txt_monId");
			String _CPUId = req.getParameter("txt_cpuId");
			String _KEYId = req.getParameter("txt_keyId");
			String _MOUId = req.getParameter("txt_mouId");
			String _AddProd = req.getParameter("txt_additional");
			String _LAPId = req.getParameter("txt_lapId");
			String _AddId = req.getParameter("txt_addId");

			PreparedStatement ps3 = cn.prepareStatement("select * from new_assigning where Employee_Id=?");
			ps3.setString(1, _empId);
			ResultSet rs1 = ps3.executeQuery();
			if (!rs1.next()) {

				PreparedStatement ps = cn.prepareStatement("insert into new_assigning() values(?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, _name);
				ps.setString(2, _email);
				ps.setString(3, _empId);
				ps.setString(4, _MTRId);
				ps.setString(5, _CPUId);
				ps.setString(6, _KEYId);
				ps.setString(7, _MOUId);
				ps.setString(8, _AddProd);
				ps.setString(9, _LAPId);
				ps.setString(10, _AddId);
				PreparedStatement ps2 = cn
						.prepareStatement("update all_assets set Status=\"Assigned\" where Product_ID=?");
				if (_MTRId != null) {
					ps2.setString(1, _MTRId);
					ps2.execute();
				}
				if (_CPUId != null) {
					ps2.setString(1, _CPUId);
					ps2.execute();
				}
				if (_KEYId != null) {
					ps2.setString(1, _KEYId);
					ps2.execute();
				}
				if (_MOUId != null) {
					ps2.setString(1, _MOUId);
					ps2.execute();
				}
				if (_AddId != null) {
					ps2.setString(1, _AddId);
					ps2.execute();
				}
				if (_LAPId != null) {
					ps2.setString(1, _LAPId);
					ps2.execute();
				}

				int a = ps.executeUpdate();
				if (a > 0) {
					out.println("Product Assigned");
				}

			} else {

				if (_MTRId != null && _MTRId.length() != 0) {
					PreparedStatement ps2 = cn
							.prepareStatement("update new_assigning set Monitor_Id=? where Employee_Id=? ");

					ps2.setString(1, _MTRId);
					ps2.setString(2, _empId);
					ps2.execute();
				}
				if (_CPUId != null && _CPUId.length() != 0) {
					PreparedStatement ps2 = cn
							.prepareStatement("update new_assigning set CPU_Id=? where Employee_Id=? ");

					ps2.setString(1, _CPUId);
					ps2.setString(2, _empId);
					ps2.execute();
				}
				if (_KEYId != null && _KEYId.length() != 0) {
					PreparedStatement ps2 = cn
							.prepareStatement("update new_assigning set Keyboard_Id=? where Employee_Id=? ");

					ps2.setString(1, _KEYId);
					ps2.setString(2, _empId);
					ps2.execute();
				}
				if (_MOUId != null && _MOUId.length() != 0) {
					PreparedStatement ps2 = cn
							.prepareStatement("update new_assigning set Mouse_Id=? where Employee_Id=? ");

					ps2.setString(1, _MOUId);
					ps2.setString(2, _empId);
					ps2.execute();

				}
				if (_AddId != null && _AddId.length() != 0) {
					PreparedStatement ps2 = cn.prepareStatement(
							"update new_assigning set Additional_Product=?,AdditionalProduct_Id=? where Employee_Id=? ");

					ps2.setString(1, _AddProd);
					ps2.setString(2, _AddId);
					ps2.setString(3, _empId);
					ps2.execute();

				}
				if (_LAPId != null && _LAPId.length() != 0) {
					PreparedStatement ps2 = cn
							.prepareStatement("update new_assigning set Laptop_Id=? where Employee_Id=? ");

					ps2.setString(1, _LAPId);
					ps2.setString(2, _empId);
					ps2.execute();

				}

			}
		} catch (Exception e) {

		}
		out.close();
	}

}
