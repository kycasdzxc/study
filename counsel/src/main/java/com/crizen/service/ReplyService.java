package com.crizen.service;

import java.util.List;

import com.crizen.domain.Reply;

public interface ReplyService {
	
	List<Reply> getList(int counsel_reply_bno);
	
	Reply get(int counsel_reply_rno);
	
	int register(Reply reply);
	
	boolean modify(Reply reply);
	
	boolean remove(int counsel_reply_rno);
	
}
