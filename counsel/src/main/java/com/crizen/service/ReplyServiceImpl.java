package com.crizen.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crizen.domain.Reply;
import com.crizen.mapper.ReplyMapper;

import lombok.AllArgsConstructor;

@Service @AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {

	private ReplyMapper replyMapper;
	
	@Override
	public List<Reply> getList(int counsel_reply_bno) {
		return replyMapper.getList(counsel_reply_bno);
	}
	
	@Override
	public Reply get(int counsel_reply_rno) {
		return replyMapper.read(counsel_reply_rno);
	}
	
	@Override
	public int register(Reply reply) {
		return replyMapper.insert(reply);
	}

	@Override
	public boolean modify(Reply reply) {
		return replyMapper.update(reply) > 0;
	}

	@Override
	public boolean remove(int counsel_reply_rno) {
		return replyMapper.delete(counsel_reply_rno) > 0;
	}

}
