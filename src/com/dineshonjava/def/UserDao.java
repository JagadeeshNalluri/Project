package com.dineshonjava.def;
import java.util.*;
import java.sql.*;

public class UserDao {

	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456789");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public static int save(User u){
		int status=0;
		try{
			Connection con=UserDao.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into users(name,email,password,phone,dob) values (?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getPassword());
			ps.setString(4,u.getPhone());
			ps.setString(5,u.getDob());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	public static List<User> getAllUsers(){
		List<User> list=new ArrayList<User>();
		
		try{
			Connection con=UserDao.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from users");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				User u=new User();
				u.setName(rs.getString(1));
				u.setEmail(rs.getString(2));
				u.setPassword(rs.getString(3));
				u.setPhone(rs.getString(4));
				u.setDob(rs.getString(5));
				list.add(u);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return list;
	}
}