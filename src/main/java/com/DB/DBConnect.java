package com.DB;

//import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.*;
public class DBConnect {
	
	
	

	
		
	private static Connection conn;	
		
	public static Connection getConnection() {
			
			
			try {
				
				if(conn==null) {
					Class.forName("com.mysql.jdbc.Driver"); 
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","saji","1234");
					
					
				    }
				
				
				
				//return con;
				
			}catch(Exception e) {
				
				e.printStackTrace();
				
				
			}
			
			return conn;
			
			
		}
		
		
		
		
		
		

}
