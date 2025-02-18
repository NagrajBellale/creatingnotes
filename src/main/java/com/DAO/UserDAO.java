package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.user.UserDetails;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addUser(UserDetails ud) {
		boolean f=false;
		try {
			String query="insert into user(name,email,password), values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, ud.getName());
			ps.setNString(2, ud.getEmail());
			ps.setNString(3, ud.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return f;
	}
	
	public UserDetails loginUser(UserDetails us) {
		UserDetails user=null;
		try {
			String query="select * from user where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getPassword());
			ResultSet rs=ps.executeQuery();
			
			
			if(rs.next()) {
				user=new UserDetails();
				user.setName("name");
				user.setEmail("email");
				user.setPassword("password");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	

}
