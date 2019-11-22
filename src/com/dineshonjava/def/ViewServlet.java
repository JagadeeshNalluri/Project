package com.dineshonjava.def;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<a href='index.jsp'>Add New User</a>");
		out.println("<h1>Users List</h1>");
		
		List<User> list=UserDao.getAllUsers();
		
		out.print("<table border='1' width='100%'");
		out.print("<tr><th>Name</th><th>Email</th><th>Password</th><th>Phone</th><th>Dob</th></tr>");
		for(User u:list){
			out.print("<tr><td>"+u.getName()+"</td><td>"+u.getEmail()+"</td><td>"+u.getPassword()+"</td><td>"+u.getPhone()+"</td><td>"+u.getDob()+"</td><td>");
		}
		out.print("</table>");
		
		out.close();
	}
}
