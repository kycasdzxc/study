package com.crizen.service;

import java.util.List;

import com.crizen.domain.UserInfo;

public interface MemberService {
	
	List<UserInfo> getList();

	UserInfo get(String user_id);
	
	boolean insert(UserInfo user);
	
	boolean changePw(UserInfo user);
}
