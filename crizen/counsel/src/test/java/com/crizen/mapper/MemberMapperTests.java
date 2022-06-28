package com.crizen.mapper;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.crizen.domain.UserAuth;
import com.crizen.domain.UserInfo;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberMapperTests {
	
	@Setter @Autowired
	private MemberMapper mapper;
	@Setter @Autowired
	private PasswordEncoder encoder;
	
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
		log.info(mapper.read("song"));
	}
	
	@Test
	public void testInsert() {
		UserInfo user = new UserInfo();
		user.setUser_id("song");
		user.setUser_pw(encoder.encode("1234"));
		user.setUser_name("송송이");
		
		mapper.insert(user);
	}
	
	@Test
	public void testInsertAuth() {
		UserAuth auth = new UserAuth();
		auth.setUser_id("song");
		
		mapper.insertAuth(auth);
	}
	
	@Test
	public void testFailedLogin() {
		UserInfo user = new UserInfo();
		user.setUser_id("song");
		
		mapper.failedLogin(user);
	}
	
	@Test
	public void testResetLoginCnt() {
		UserInfo user = new UserInfo();
		user.setUser_id("song");
		
		mapper.resetLoginCnt(user);
	}
	
	@Test
	public void testLockedUser() {
		UserInfo user = new UserInfo();
		user.setUser_id("song");
		
		mapper.lockedUser(user);
	}

	@Test
	public void testUnlockedUser() {
		UserInfo user = new UserInfo();
		user.setUser_id("song");
		
		mapper.unlockedUser(user);
	}
	
	@Test
	public void testChangePw() {
		UserInfo user = new UserInfo();
		user.setUser_id("song");
		user.setUser_pw(encoder.encode("1234"));
		
		mapper.changePw(user);
	}
}
