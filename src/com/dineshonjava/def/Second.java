package com.dineshonjava.def;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/Second")
public class Second extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456789");

			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

			PrintWriter pw=response.getWriter();
			response.setContentType("text/html");
			String a=request.getParameter("username");
			String b=request.getParameter("password");
			if(a.equals("admin")&&b.equals("admin")) {
			RequestDispatcher rd=request.getRequestDispatcher("pindex.jsp");  
				rd.forward(request, response);
			}
			else {
				
				pw.print("<p>enter correct username or password!</p>");
				//RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");  
				
				//rd1.include(request, response);
				
			}
				
	}

}
