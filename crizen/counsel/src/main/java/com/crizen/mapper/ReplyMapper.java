package com.crizen.mapper;

import java.util.List;

import com.crizen.domain.Reply;

public interface ReplyMapper {
	
	List<Reply> getList(int counsel_reply_bno);
	
	Reply read(int counsel_reply_rno);
	
	int insert(Reply reply);
	
	int update(Reply reply);
	
	int delete(int counsel_reply_rno);

	int deleteAll(int counsel_reply_bno);
	
	List<Reply> findSlangList();
}
