package com.crizen.mapper;

import java.util.List;

import com.crizen.domain.UserAuth;
import com.crizen.domain.UserInfo;

public interface MemberMapper {
	
	List<UserInfo> getList();

	UserInfo read(String user_id);
	
	int insert(UserInfo user);
	
	int insertAuth(UserAuth auth);
	
	int failedLogin(UserInfo user);
	
	int resetLoginCnt(UserInfo user);
	
	int lockedUser(UserInfo user);
	
	int unlockedUser(UserInfo user);
	
	int changePw(UserInfo user);
}
