package com.crizen.domain;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("reply")
public class Reply {

	private int counsel_reply_rno;
	private String counsel_reply_content;
	private String counsel_reply_writer;
	private String counsel_reply_regDate;
	private int counsel_reply_bno;
	
	private String counsel_reply_userId;
}
