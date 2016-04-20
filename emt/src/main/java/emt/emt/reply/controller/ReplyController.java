package emt.emt.reply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Reply;
import emt.emt.common.domain.User;
import emt.emt.reply.service.ReplyService;

@Controller
public class ReplyController {
	@Autowired private ReplyService replyService;

	//1_1 댓글 불러오기
	@RequestMapping(value="replyList", method=RequestMethod.POST)
	@ResponseBody
	public List<Reply> replyList(int type, Reply reply, Model model){
		model.addAttribute("Reply", reply);
		return replyService.replyList(type);
		
	}
	
	//댓글 해당 게시판의 전체 숫자 불러오기
	@RequestMapping(value="replyCount", method=RequestMethod.POST)
	@ResponseBody
	public int replyCount(Reply reply){
		
		return replyService.replyCount(reply);
	}
	
	//1_2 댓글 추가하기
	@RequestMapping(value="replyInsert", method=RequestMethod.POST)
	@ResponseBody
	public int replyInsert(Reply reply){
		int res = replyService.replyInsert(reply);
		return res;
	}
		

	
	
}
