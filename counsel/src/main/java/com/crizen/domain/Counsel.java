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
}
