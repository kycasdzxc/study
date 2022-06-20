package com.crizen.service;

import java.util.List;

import com.crizen.domain.Counsel;

public interface BoardService {

	List<Counsel> getList();

	Counsel get(int counsel_bno);

	int register(Counsel counsel);

	boolean modify(Counsel counsel);

	boolean remove(int counsel_bno);

}
