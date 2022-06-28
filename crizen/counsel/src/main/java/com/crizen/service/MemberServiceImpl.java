package com.crizen.service;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.crizen.domain.UserAuth;
import com.crizen.domain.UserInfo;
import com.crizen.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service @AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private MemberMapper mapper;
	private PasswordEncoder encoder;
	
	@Override
	public List<UserInfo> getList() {
		return mapper.getList();
	}

	@Override
	public UserInfo get(String user_id) {
		return mapper.read(user_id);
	}

	@Override
	public boolean insert(UserInfo user) {
		user.setUser_pw(encoder.encode(user.getUser_pw()));
		int result = mapper.insert(user);
		
		UserAuth auth = new UserAuth();
		auth.setUser_id(user.getUser_id());
		
		mapper.insertAuth(auth);
		return result > 0;
	}

	@Override
	public boolean changePw(UserInfo user) {
		user.setUser_pw(encoder.encode(user.getUser_pw()));
		int result = mapper.changePw(user);
		mapper.resetLoginCnt(user);
		mapper.unlockedUser(user);
		return result > 0;
	}
}
