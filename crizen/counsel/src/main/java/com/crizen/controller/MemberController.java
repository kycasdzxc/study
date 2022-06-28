package com.crizen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crizen.domain.UserInfo;
import com.crizen.service.MemberService;

import lombok.AllArgsConstructor;

@RequestMapping("member/*")
@AllArgsConstructor
@Controller
public class MemberController {
	
	private MemberService memberService;
	
	@GetMapping("login")
	public String getLogin() {
		return "member/login";
	}
	
	@PostMapping("login")
	public void postLogin() {

	}
	
	@GetMapping("join")
	public void join() {
		
	}
	
	@PostMapping("join")
	public String join(UserInfo user) {
		memberService.insert(user);
		return "redirect:/member/login";
	}
	
	@GetMapping("checkedId") @ResponseBody
	public String checkedId(UserInfo user) {
		return memberService.get(user.getUser_id()) == null ? "0" : "1";
	}
	
	@GetMapping("changePw")
	public String changePw() {
		return "member/changePw";
	}
	
	@PostMapping("changePw")
	public String changePw(UserInfo user) {
		memberService.changePw(user);
		return "redirect:/member/login";
	}
}
