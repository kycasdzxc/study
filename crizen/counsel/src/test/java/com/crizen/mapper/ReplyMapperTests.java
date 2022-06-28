package com.crizen.mapper;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.crizen.domain.Reply;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ReplyMapperTests {
	
	@Setter @Autowired
	private ReplyMapper mapper;
	
	@Test
	public void testExist() {
		assertNotNull(mapper);
	}
	
	@Test
	public void testGetList() {
		mapper.getList(1039).forEach(log::info);
	}
	
	@Test
	public void testRead() {
		log.info(mapper.read(1038));
	}
	
	@Test
	public void testInsert() {
		Reply reply = new Reply();
		reply.setCounsel_reply_content("reply test");
		reply.setCounsel_reply_writer("doong");
		reply.setCounsel_reply_bno(1039);
		reply.setCounsel_reply_userId("song");
		
		log.info(mapper.insert(reply));
	}
	
	@Test
	public void testUpdate() {
		Reply reply = new Reply();
		reply.setCounsel_reply_rno(19);
		reply.setCounsel_reply_content("update test");
		mapper.update(reply);
	}
	
	@Test
	public void testDelete() {
		mapper.delete(15);
	}
	
	@Test
	public void testDeleteAll() {
		mapper.deleteAll(14);
	}
	
	@Test
	public void testGetSlangList() {
		mapper.findSlangList().forEach(log::info);
	}
}
