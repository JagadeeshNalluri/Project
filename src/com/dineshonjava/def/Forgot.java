package com.dineshonjava.def;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/Forgot")

public class Forgot extends HttpServlet {
	PreparedStatement st = null;
	Connection con = null;
	ResultSet rs = null;
	public void init() {
		System.out.println("init");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "123456789");

		} catch (Exception ae) {
			System.out.println("Sorry! Database is not connected");
		}
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		String a = req.getParameter("t1");
		String b = req.getParameter("t2");
		String c = req.getParameter("t3");

		try {

			st = con.prepareStatement("select * from users where dob=? and email=? and phone=?");
			st.setString(1, a);
			st.setString(2, b);
			st.setString(3, c);
			rs = st.executeQuery();
			while (rs.next())
			{
				res.sendRedirect("changepassword.jsp");	
			}
				res.sendRedirect("forgotpassword.jsp");
			

		} catch (Exception at) {
			out.println("Sorry! unable to retrieve record");

		}
		

		out.println("</body>");
		out.println("</html>");
	}

}