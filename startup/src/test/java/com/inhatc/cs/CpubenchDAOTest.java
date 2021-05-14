package com.inhatc.cs;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.inhatc.domain.CpubenchVO;
import com.inhatc.persistence.CpubenchDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
		
public class CpubenchDAOTest {

		@Inject
		private CpubenchDAO dao;
		
		
		@Test
		public void testInsertCpubench() throws Exception{
			CpubenchVO vo = new CpubenchVO(); 
					vo.setCPU_num(2);
					vo.setCPU_name("test2");
					vo.setBenchi_value(200);
					vo.setPrice(3000);
					dao.insert(vo);
			
		}
		
		@Test
		public void readCpubench() throws Exception{
			System.out.println(dao.read(001));
		}

}