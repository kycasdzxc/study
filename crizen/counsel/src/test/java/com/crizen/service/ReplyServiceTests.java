package com.crizen.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.crizen.domain.Counsel;
import com.crizen.domain.Reply;
import com.crizen.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyServiceTests {
	
	@Setter @Autowired
	private ReplyService replyService;
	
	@Test
	public void testExist() {
		assertNotNull(replyService);
	}
	
	@Test
	public void testGetList() {
		replyService.getList(14).forEach(log::info);
	}
	
	@Test
	public void testGet() {
		log.info(replyService.get(24));
	}
	
	@Test
	public void testInsert() {
		Reply reply = new Reply();
		reply.setCounsel_reply_content("service test");
		reply.setCounsel_reply_writer("doong");
		reply.setCounsel_reply_bno(15);
		
		log.info(replyService.register(reply));
	}
	
	@Test
	public void testUpdate() {
		Reply reply = new Reply();
		reply.setCounsel_reply_rno(18);
		reply.setCounsel_reply_content("update service");
		replyService.modify(reply);
	}
	
	@Test
	public void testDelete() {
		replyService.remove(14);
	}
}
