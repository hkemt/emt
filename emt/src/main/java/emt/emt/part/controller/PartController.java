package emt.emt.part.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.Question;
import emt.emt.part.service.PartService;

@Controller
public class PartController {
	
	@Autowired private PartService partService;
	
	// 파트별 1,2,3,4,5,6 페이지로 이동
	@RequestMapping("part1")
	public String part1(Question question,Model model){
		
		question.setQuestionType(1);
		
		model.addAttribute("partQuestion", partService.partQuestion(question));
		
		return "/user/part/userPart";
	}
	
	
	@RequestMapping("part2")
	public String part2(Question question,Model model){
		
		question.setQuestionType(2);
		
		model.addAttribute("partQuestion", partService.partQuestion(question));
		
		return "/user/part/userPart";
	}
	
	@RequestMapping("part3")
	public String part3(Question question,Model model){
		
		question.setQuestionType(3);
		
		model.addAttribute("partQuestion", partService.partQuestion(question));
		
		return "/user/part/userPart";
	}
	
	@RequestMapping("part4")
	public String part4(Question question,Model model){
		
		question.setQuestionType(4);
		
		model.addAttribute("partQuestion", partService.partQuestion(question));
		
		return "/user/part/userPart";
	}
	
	@RequestMapping("part5")
	public String part5(Question question,Model model){
		
		question.setQuestionType(5);
		
		model.addAttribute("partQuestion", partService.partQuestion(question));
		
		return "/user/part/userPart";
	}
	
	@RequestMapping("part6")
	public String part6(Question question,Model model){
		
		question.setQuestionType(6);
		
		model.addAttribute("partQuestion", partService.partQuestion(question));
		
		return "/user/part/userPart";
	}
}
