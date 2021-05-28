package com.inhatc.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBconnect {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public DBconnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
			String dbUser = "root";
			String dbPwd = "inhatc";
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static Connection DBconnecting() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
			String dbUser = "root";
			String dbPwd = "inhatc";
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
		
	}
	
}
