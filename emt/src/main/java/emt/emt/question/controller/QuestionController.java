package emt.emt.question.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Question;
import emt.emt.question.service.QuestionService;

@Controller
public class QuestionController {
	@Autowired private QuestionService questionService;
	
	//2_1 문제관리 페이지 이동
	@RequestMapping("adminQuestion")
	public String adminQuestion(Model model){	
		return "admin/question/adminQuestion";
	}
	
	//2_2 문제관리 전체목록
	@RequestMapping("questionList")
	@ResponseBody
	public List<Question> questionList(int type){
		
		return questionService.questionList(type);
	}
	
	//2_3 문제관리 전체목록 수
	@RequestMapping("questionCount")
	@ResponseBody
	public int questionCount(){
		return questionService.questionCount();
	}
	
	//2_4 문제관리 상세보기
	@RequestMapping("questionView")
	public String questionView(Question question, Model model){
		question = questionService.questionView(question);
		model.addAttribute("question", question);
		
		return "admin/question/adminQuestionView";
	}
	
}
