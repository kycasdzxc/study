package com.crizen.task;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crizen.domain.Counsel;
import com.crizen.domain.Reply;
import com.crizen.mapper.BoardMapper;
import com.crizen.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("quartz")
@AllArgsConstructor
public class QuartzServiceImpl implements QuartzService {
	
	private BoardMapper boardMapper;
	private ReplyMapper replyMapper;
	
	@Override
	public void removeOvertime() {
		List<Counsel> removeList = boardMapper.findRemoveList();
		
		for(Counsel c : removeList) {
			replyMapper.deleteAll(c.getCounsel_bno());
			boardMapper.delete(c.getCounsel_bno());
		}
		
		log.warn("==== 게 시 글 삭 제 ====");
		log.warn("게시글 : " + removeList.size() + " 개 삭제 완료");
		log.warn("========================");
	}
	
	@Override
	public void modifySlang() {
		List<Counsel> boardSlangs = boardMapper.findSlangList();
		List<Reply> replySlangs = replyMapper.findSlangList();
		
		for(Counsel c : boardSlangs) {
			boardMapper.update(c);
		}
		
		for(Reply r : replySlangs) {
			replyMapper.update(r);
		}
		
		log.warn("==== 비 속 어 검 열 ====");
		log.warn("게시글 : " + boardSlangs.size() + " 개 변경 완료");
		log.warn("덧  글 : " + replySlangs.size() + " 개 변경 완료");
		log.warn("========================");
	}
}
