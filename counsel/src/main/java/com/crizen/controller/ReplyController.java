package com.crizen.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.crizen.domain.Reply;
import com.crizen.service.ReplyService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("replies")
@AllArgsConstructor
public class ReplyController {
	private ReplyService replyService;
	
	@PostMapping("add")
	public int create(@RequestBody Reply reply) {
		return replyService.register(reply) > 0 ? reply.getCounsel_reply_rno() : null;
	}
	
	@GetMapping("{counsel_reply_bno}")
	public List<Reply> getList(@PathVariable int counsel_reply_bno) {
		return replyService.getList(counsel_reply_bno);
	}
	
	@GetMapping("reply/{counsel_reply_rno}")
	public Reply get(@PathVariable int counsel_reply_rno) {
		return replyService.get(counsel_reply_rno);
	}
	
	@DeleteMapping("{counsel_reply_rno}")
	public String remove(@PathVariable int counsel_reply_rno, @RequestBody Reply reply) {
		return replyService.remove(counsel_reply_rno) ? "success" : null;
	}
	
	@RequestMapping(value="{counsel_reply_rno}", method={RequestMethod.PUT, RequestMethod.PATCH})
	public String modify(@PathVariable int counsel_reply_rno, @RequestBody Reply reply) {
		return replyService.modify(reply) ? "success" : null;
	}
}
