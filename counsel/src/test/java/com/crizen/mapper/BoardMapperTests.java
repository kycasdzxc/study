package com.crizen.mapper;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.crizen.domain.Counsel;
import com.crizen.domain.Slang;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
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
		Counsel counsel = new Counsel();
		counsel.setCounsel_type("W");
		mapper.getList(counsel).forEach(log::info);
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
	
	@Test
	public void testFindRemoveList() {
		mapper.findRemoveList().forEach(log::info);
	}
	
	@Test
	public void testFindSlangList() {
		mapper.findSlangList().forEach(log::info);
	}
	
	@Test
	public void testSlangList() {
		mapper.getSlangList().forEach(log::info);
	}
	
	@Test
	public void testAddSlang() {
		Slang slang = new Slang();
		slang.setCounsel_slang("멍청이");
		
		mapper.addSlang(slang);
	}
	
	@Test
	public void testRemoveSlang() {
		Slang slang = new Slang();
		slang.setCounsel_slang("멍청이");
		
		mapper.removeSlang(slang);
	}
	
	@Test
	public void testUpdateReplyCnt() {
		log.info(mapper.updateReplyCnt(1016, 1));
	}
}
