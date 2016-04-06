package emt.emt.question.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.Question;
import emt.emt.question.service.QuestionService;

@Controller
public class QuestionController {
	@Autowired private QuestionService questionService;
	
	//1_문제관리 등록
	//2_문제관리 수정
	//3_문제관리 삭제
	//4_문제관리 목록보기
	@RequestMapping("adminQuestion")
	public String adminQuestion(Model model){
		List<Question> question = questionService.questionList();
		model.addAttribute("question", question);
		
		return "/question/adminQuestion";
		
	}
	
	
	//5_문제관리 상세보기
	
	
	
}
