package com.crizen.test;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class DBConnectionTest {

//	@Inject
//	private DataSource ds;
	
//	@Setter @Autowired
//	private TestMapper mapper;
	
//	@Test
//	public void testConnection() {
//		try(Connection con = ds.getConnection()) {
//			System.out.println("DB 연결!");
//		}
//		catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
//	@Test
//	public void testConnection2() {
//		assertNotNull(mapper);
//	}
//	
//	@Test
//	public void testList() {
//		mapper.list();
//	}
}
