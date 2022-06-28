package com.crizen.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crizen.domain.Counsel;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Setter @Autowired
	private BoardService boardService;
	
	@Test
	public void testExist() {
		assertNotNull(boardService);
	}
	
	@Test
	public void testGetList() {
		Counsel counsel = new Counsel();
		boardService.getList(counsel).forEach(log::info);
	}
	
	@Test
	public void testRegister() {
		Counsel counsel = new Counsel();
		counsel.setCounsel_title("service test");
		counsel.setCounsel_content("service test");
		counsel.setCounsel_writer("service test");
		
		boardService.register(counsel);
	}
	
	@Test
	public void testUpdate() {
		Counsel counsel = new Counsel();
		counsel.setCounsel_bno(11);
		counsel.setCounsel_title("service update");
		counsel.setCounsel_content("service update");
		
		boardService.modify(counsel);
	}
	
	@Test
	public void testDelete() {
		boardService.remove(17);
	}
}
