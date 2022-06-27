package com.crizen.controller;

import java.security.Principal;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crizen.domain.Counsel;
import com.crizen.domain.Slang;
import com.crizen.service.BoardService;
import com.crizen.service.ReplyService;

import lombok.AllArgsConstructor;

@RequestMapping("board/*")
@AllArgsConstructor
@Controller
public class BoardController {

	private BoardService boardService;
	private ReplyService replyService;
	
	@GetMapping("list")
	public String list(Model model, Counsel counsel) {
		model.addAttribute("boards", boardService.getList(counsel));
		model.addAttribute("counsel", counsel);
		return "/board/list";
	}
	
	@GetMapping("register")
	@PreAuthorize("isAuthenticated()")
	public void register(Model model, Principal principal) {
		model.addAttribute("userId", principal.getName());
	}
	
	@PostMapping("register")
	public String register(Counsel counsel) {
		boardService.register(counsel);
		return "redirect:/board/list";
	}
	
	@GetMapping("get")
	public void get(int counsel_bno, Model model, Principal principal) {
		model.addAttribute("board", boardService.get(counsel_bno));
		model.addAttribute("principal", principal);
	}
	
	@GetMapping("modify")
	@PreAuthorize("principal.username == #counsel_userId")
	public void modify(int counsel_bno, String counsel_userId, Model model) {
		model.addAttribute("board", boardService.get(counsel_bno));
	}
	
	@PostMapping("modify")
	public String modify(Counsel counsel) {
		boardService.modify(counsel);
		return "redirect:/board/get?counsel_bno=" + counsel.getCounsel_bno();
	}
	
	@PostMapping("remove")
	@PreAuthorize("principal.username == #counsel_userId or hasRole('ADMIN')")
	public String remove(int counsel_bno, String counsel_userId) {
		replyService.removeAll(counsel_bno);
		boardService.remove(counsel_bno);
		return "redirect:/board/list";
	}
	
	@GetMapping("slangList")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void slangList(Model model) {
		model.addAttribute("slangs", boardService.getSlangList());
	}
	
	@PostMapping("addSlang")
	public String addSlang(Slang slang) {
		boardService.addSlang(slang);
		return "redirect:/board/slangList";
	}
	
	@GetMapping("removeSlang")
	public String removeSlang(Slang slang) {
		boardService.removeSlang(slang);
		return "redirect:/board/slangList";
	}
}
