package com.crizen.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.crizen.domain.Counsel;
import com.crizen.domain.Slang;

public interface BoardService {

	List<Counsel> getList();

	Counsel get(int counsel_bno);

	int register(Counsel counsel);

	boolean modify(Counsel counsel);

	boolean remove(int counsel_rno);
	
	List<Slang> getSlangList();
	
	boolean addSlang(Slang slang);
	
	boolean removeSlang(Slang slang);
	
}
