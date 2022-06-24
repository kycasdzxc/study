package com.crizen.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crizen.domain.UserInfo;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberServiceTests {
	
	@Setter @Autowired
	private MemberService memberService;
	@Setter @Autowired
	private PasswordEncoder encoder;
	
	@Test
	public void testExist() {
		assertNotNull(memberService);
	}
	
	@Test
	public void testGetList() {
		memberService.getList().forEach(log::info);
	}
	
	@Test
	public void testRead() {
		log.info(memberService.get("haha"));
	}
	
	@Test
	public void testInsert() {
		UserInfo user = new UserInfo();
		user.setUser_id("haha");
		user.setUser_pw(encoder.encode("1234"));
		user.setUser_name("하하맨");
		
		memberService.insert(user);
	}
}
