package com.crizen.mapper;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.crizen.domain.Counsel;
import com.crizen.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Setter @Autowired
	private BoardMapper mapper;
	
	@Test
	public void testExist() {
		assertNotNull(mapper);
	}
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(log::info);
	}
	
	@Test
	public void testRead() {
		log.info(mapper.read(15));
	}
	
	@Test
	public void testInsert() {
		Counsel counsel = new Counsel();
		counsel.setCounsel_title("test title");
		counsel.setCounsel_content("test content");
		counsel.setCounsel_writer("tester");
		
		log.info(mapper.insert(counsel));
	}
	
	@Test
	public void testUpdate() {
		Counsel counsel = new Counsel();
		counsel.setCounsel_bno(17);
		counsel.setCounsel_title("update test");
		counsel.setCounsel_content("update test");
		
		mapper.update(counsel);
	}
	
	@Test
	public void testDelete() {
		mapper.delete(16);
	}
}
