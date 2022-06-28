package com.crizen.domain;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("userAuth")
public class UserAuth {
	
	private String user_id;
	private String user_auth;
}
