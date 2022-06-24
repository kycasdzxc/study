package com.crizen.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crizen.domain.Counsel;
import com.crizen.domain.Slang;
import com.crizen.mapper.BoardMapper;

import lombok.AllArgsConstructor;

@Service @AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	private BoardMapper boardMapper;
	
	@Override
	public List<Counsel> getList() {
		return boardMapper.getList();
	}

	@Override
	public Counsel get(int counsel_bno) {
		return boardMapper.read(counsel_bno);
	}

	@Override
	public int register(Counsel counsel) {
		return boardMapper.insert(counsel);
	}

	@Override
	public boolean modify(Counsel counsel) {
		return boardMapper.update(counsel) > 0;
	}

	@Override
	public boolean remove(int counsel_bno) {
		return boardMapper.delete(counsel_bno) > 0;
	}
	
	@Override
	public List<Slang> getSlangList() {
		return boardMapper.getSlangList();
	}
	
	@Override
	public boolean addSlang(Slang slang) {
		return boardMapper.addSlang(slang) > 0;
	}
	
	@Override
	public boolean removeSlang(Slang slang) {
		return boardMapper.removeSlang(slang) > 0;
	}
}
