package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entites.*;

public class UserDAO {
	
	
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}	
	
	public boolean userRegister(User us)
	{
		
		boolean f= false;
		
		
		try {
			
			String query="insert into user(name,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			
			
			ps.executeUpdate();
			f=true;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return f;
		
	}
	
	
	public User getLogin(String em,String ps) {
		 User us=null;
		
		
		
try {
	      
			
			String query="select * from user where email=? and password=?";
			PreparedStatement pst=conn.prepareStatement(query);
			pst.setString(1, em);
			pst.setString(2, ps);
			
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()) {
				
				us=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
				
			}
			
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
            
		
		
          return us;
		
		
		
		
		
	}
		
		
		
	

}
