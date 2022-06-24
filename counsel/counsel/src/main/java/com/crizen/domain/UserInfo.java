package com.crizen.domain;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("user")
public class UserInfo {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_regDate;
	
	private boolean user_enabled;
	private List<UserAuth> user_auths;
	private int user_failedCnt;
}
