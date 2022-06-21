package com.crizen.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crizen.domain.Reply;
import com.crizen.mapper.BoardMapper;
import com.crizen.mapper.ReplyMapper;

import lombok.AllArgsConstructor;

@Service @AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {

	private ReplyMapper replyMapper;
	private BoardMapper boardMapper;
	
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
		boardMapper.updateReplyCnt(reply.getCounsel_reply_bno(), 1);
		return replyMapper.insert(reply);
	}

	@Override
	public boolean modify(Reply reply) {
		return replyMapper.update(reply) > 0;
	}

	@Override
	public boolean remove(int counsel_reply_rno) {
		boardMapper.updateReplyCnt(replyMapper.read(counsel_reply_rno).getCounsel_reply_bno(), -1);
		return replyMapper.delete(counsel_reply_rno) > 0;
	}
	
	@Override
	public boolean removeAll(int counsel_reply_bno) {
		return replyMapper.deleteAll(counsel_reply_bno) > 0;
	}

}
