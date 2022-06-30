package com.crizen.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter @SuppressWarnings("serial")
public class CustomUser extends User {
	
	private UserInfo user;
	private boolean enabled;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public CustomUser(UserInfo user) {
		this(user.getUser_id(), user.getUser_pw(),
				user.getUser_auths().stream().map(auth-> new SimpleGrantedAuthority(auth.getUser_auth())).collect(Collectors.toList())
		);
		this.user = user;
		this.enabled = user.isUser_enabled();
	}

}
