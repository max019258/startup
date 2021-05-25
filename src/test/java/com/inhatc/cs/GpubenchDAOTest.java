package com.inhatc.cs;

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
		
		@Test
		public void testupdategpu() throws Exception{
			SeleniumCrawling sel = new SeleniumCrawling();
			System.out.println("test" + sel.price_crwaling("rtx3060"));
//			GpubenchVO vo = new GpubenchVO();
//			vo.setPrice(sel.price_crwaling());
//			gpudao.update(vo);
		}
}