package com.crizen.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Service;

import com.crizen.domain.UserInfo;
import com.crizen.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service("loginFailHandler")
@AllArgsConstructor
public class LoginFailHandler implements AuthenticationFailureHandler {
	
	private MemberMapper mapper;
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		if(exception instanceof AuthenticationServiceException) {
			request.setAttribute("LoginFailMessage", "존재하지 않는 계정입니다.");
		}
		else if(exception instanceof BadCredentialsException) {
			UserInfo user = mapper.read(request.getParameter("username"));
			if(user.getUser_failedCnt() >= 4) {
				mapper.lockedUser(user);
				request.setAttribute("LockedMessage", "계정이 잠겼습니다.");
				request.setAttribute("LoginFailMessage", "계정이 잠겼습니다.");
			} else {
				mapper.failedLogin(user);
				request.setAttribute("LoginFailMessage", "아이디 또는 비밀번호가 일치하지 않습니다.<br>남은 시도횟수(" + (4 - user.getUser_failedCnt()) + "번)");
			}
		}
		else if(exception instanceof DisabledException) {
			request.setAttribute("LoginFailMessage", "잠긴 계정입니다. 비밀번호를 변경하세요.");
		}
		else request.setAttribute("LoginFailMessage", "계정을 찾을 수 없습니다.");
		
		request.getRequestDispatcher("/member/login").forward(request, response);
	}
}
