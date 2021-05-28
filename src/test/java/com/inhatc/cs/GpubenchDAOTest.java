package com.inhatc.cs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.inhatc.domain.GpubenchVO;
import com.inhatc.domain.SeleniumCrawling;
import com.inhatc.persistence.GpubenchDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
		
public class GpubenchDAOTest {

		@Inject
		private GpubenchDAO gpudao;
		
//		@Test
//		public void testupdategpu() throws Exception{
//			SeleniumCrawling sel = new SeleniumCrawling();
//			System.out.println("test" + sel.price_crwaling("rtx3060"));
////			GpubenchVO vo = new GpubenchVO();
////			vo.setPrice(sel.price_crwaling());
////			gpudao.update(vo);
//		}
		
		@Test
		public void test() throws Exception{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = null;
			int j = 0;
			String jdbcDriver = "jdbc:mysql://127.0.0.1:3306/startup?serverTimezone=UTC";
			String dbUser = "root";
			String dbPwd = "inhatc";
			
			PreparedStatement pstmt = null;
			PreparedStatement price_pstmt = null;
			PreparedStatement priceinput_pstmt = null;

			ResultSet rs = null;
			ResultSet price_rs = null;
			ResultSet priceinput_rs = null;

			String[] GPU_name = new String[100];
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
			price_pstmt = conn.prepareStatement("select gpu_name from startup.gpu_bench");
			price_rs = price_pstmt.executeQuery();
			
			while (price_rs.next()) {
				GPU_name[j] = price_rs.getString("gpu_name");
				System.out.println("gpuname~~~~~~~~~~~~~~~~~"+j+"¹øÂ°---------"+GPU_name[j]);
				j++;
			}
		}
}