package com.crizen.domain;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("counsel")
public class Counsel {

	private int counsel_bno;
	private String counsel_title;
	private String counsel_content;
	private String counsel_writer;
	private String counsel_regDate;
	
	private int counsel_replyCnt;
	
	private String counsel_userId;
	
	private String counsel_updateWriter;
	private String counsel_updateDate;
	
	private String counsel_keyword;
	private String counsel_type;
}
