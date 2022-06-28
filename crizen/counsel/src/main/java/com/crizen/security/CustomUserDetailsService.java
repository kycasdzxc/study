package com.crizen.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.crizen.domain.CustomUser;
import com.crizen.domain.UserInfo;
import com.crizen.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired @Setter
	private MemberMapper mapper;
		
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn(username);
		
		UserInfo user = mapper.read(username);
		
		log.warn(user);
		return user == null ? null : new CustomUser(user);
	}
	
}