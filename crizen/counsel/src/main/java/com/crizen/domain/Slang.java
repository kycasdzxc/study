package com.crizen.domain;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("slang")
public class Slang {
	
	private String counsel_slang;
}
