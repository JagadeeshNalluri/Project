package com.dineshonjava.def;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/Login")

public class Login extends HttpServlet {
	PreparedStatement st = null;
	Connection con = null;
	ResultSet rs = null;
	public void init() {
		System.out.println("init");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "123456789");

		} catch (Exception ae) {
			ae.printStackTrace();
		}
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		String a = req.getParameter("t1");
		String b = req.getParameter("t2");

		try {

			st = con.prepareStatement("select * from users where name=? and password=?");
			st.setString(1, a);
			st.setString(2, b);
			rs = st.executeQuery();
			while (rs.next())
			{
				res.sendRedirect("index.jsp");	
			}
				res.sendRedirect("account.jsp");
			

		} catch (Exception at) {
			out.println("Sorry! unable to retrieve record");

		}
		out.println("</body>");
		out.println("</html>");
	}

}