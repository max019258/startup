package com.inhatc.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBconnect {
	
	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;
	
	public String[] CPU_name = new String[100];
	public String[] GPU_name = new String[100];
	
	SeleniumCrawling seleniumCrawling = new SeleniumCrawling();
	
	int i =0;
	
	public DBconnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
			String dbUser = "root";
			String dbPwd = "1234";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public static Connection DBconnecting() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/startup?serverTimezone=UTC";
			String dbUser = "root";
			String dbPwd = "1234";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
		
	}
	
	public void Gpu_price_update() {
		i = 0;
		int a = 0;
		
		try {
			pstmt = conn.prepareStatement("update startup.gpu_bench set price = ? where gpu_num = ?");
			
			for(i = 0; i < 50; i++){
				String temp = seleniumCrawling.price_crwaling(GPU_name[i]);
				System.out.println(i + "번째에서 걸림--------------------------"+GPU_name[i]);
				a++;
				if(temp == null || temp == "" || temp == "단종" && !temp.contains("원")){
					continue;
				}else{
					temp = temp.trim();
					System.out.print("temp---------------------------"+temp);
					temp = temp.replace("원", "").replace(",", ""); // 원 하고 , 없애고
					
					int price = Integer.parseInt(temp); // int 형 변환
					
					pstmt.setInt(1, price); // price = ? 에 가격 넣고
					pstmt.setInt(2, a); // gpu_num = ? 에 j 넣고
					pstmt.executeUpdate(); // 업뎃
					
					rs.close();
					pstmt.close();
					conn.close();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void Gpu_name_select_array() {
		
		i = 0;
		
		try {
			pstmt = conn.prepareStatement("select gpu_name from startup.gpu_bench");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				GPU_name[i] = rs.getString("gpu_name");
				i++;
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	public void  Cpu_price_update() {
		i = 0;
		int a = 0;
		
		try {
			pstmt = conn.prepareStatement("update startup.cpu_bench set price = ? where cpu_num = ?");
			
			for(i = 0; i < 50; i++){
				String temp = seleniumCrawling.price_crwaling(CPU_name[i]);
				System.out.println(i + "번째에서 걸림--------------------------"+CPU_name[i]);
				a++;
				if(temp == null || temp == "" || temp == "단종" && !temp.contains("원")){
					continue;
				}else{
					temp = temp.trim();
					System.out.print("temp---------------------------"+temp);
					temp = temp.replace("원", "").replace(",", ""); // 원 하고 , 없애고
					
					int price = Integer.parseInt(temp); // int 형 변환
					
					pstmt.setInt(1, price); // price = ? 에 가격 넣고
					pstmt.setInt(2, a); // gpu_num = ? 에 j 넣고
					pstmt.executeUpdate(); // 업뎃
					
					rs.close();
					pstmt.close();
					conn.close();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void Cpu_name_select_array() {
		
		i = 0;
		
		try {
			pstmt = conn.prepareStatement("select cpu_name from startup.cpu_bench");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CPU_name[i] = rs.getString("cpu_name");
				i++;
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	/*---------------------------------------------------------------*/
	public static void close(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement pstmt) {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
