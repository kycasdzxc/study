package com.crizen.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.crizen.domain.Counsel;

@Repository
public class boardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Counsel> list() {
		return sqlSession.selectList("list");
	}
}
