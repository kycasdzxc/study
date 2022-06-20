package com.crizen.mapper;

import java.util.List;

import com.crizen.domain.Counsel;

public interface BoardMapper {
	
	List<Counsel> getList();
	
	Counsel read(int counsel_bno);
	
	int insert(Counsel counsel);
	
	int update(Counsel counsel);
	
	int delete(int counsel_bno);
}
