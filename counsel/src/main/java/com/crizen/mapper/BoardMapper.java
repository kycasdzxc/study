package com.crizen.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.crizen.domain.Counsel;
import com.crizen.domain.Slang;

public interface BoardMapper {
	
	List<Counsel> getList(Counsel counsel);
	
	Counsel read(int counsel_bno);
	
	int insert(Counsel counsel);
	
	int update(Counsel counsel);
	
	int delete(int counsel_bno);
	
	List<Counsel> findRemoveList();
	
	List<Counsel> findSlangList();
	
	List<Slang> getSlangList();
	
	int changeSlang(Counsel counsel);

	int addSlang(Slang slang);
	
	int removeSlang(Slang slang);
	
	int updateReplyCnt(@Param("counsel_bno") int counsel_bno, @Param("amount") int amount);
}
