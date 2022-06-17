package com.crizen.domain;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data @Repository
public class Counsel {
	
	private int bno;
	private String title;
	private String content;
	private String writer;
	private String regDate;
}
