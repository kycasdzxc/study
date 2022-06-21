package com.crizen.controller;

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
	public String list(Model model) {
		model.addAttribute("boards", boardService.getList());
		return "/board/list";
	}
	
	@GetMapping("register")
	public void register() {
		
	}
	
	@PostMapping("register")
	public String register(Counsel counsel) {
		boardService.register(counsel);
		return "redirect:/board/list";
	}
	
	@GetMapping({"get", "modify"})
	public void get(int counsel_bno, Model model) {
		model.addAttribute("board", boardService.get(counsel_bno));
	}
	
	@PostMapping("modify")
	public String modify(Counsel counsel) {
		boardService.modify(counsel);
		return "redirect:/board/get?counsel_bno=" + counsel.getCounsel_bno();
	}
	
	@PostMapping("remove")
	public String remove(int counsel_bno) {
		replyService.removeAll(counsel_bno);
		boardService.remove(counsel_bno);
		return "redirect:/board/list";
	}
	
	@GetMapping("slangList")
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
