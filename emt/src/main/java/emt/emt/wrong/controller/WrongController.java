package emt.emt.wrong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.Wrong;
import emt.emt.wrong.service.WrongService;

@Controller
public class WrongController {
	@Autowired private WrongService wrongService;
	
	//복습코너로 가기
	@RequestMapping("user/member/userReview")
	public String userReview(){
		return "user/member/userReview";
	}
	//1_복습 등록
	//2_복습 수정
	//3_복습 삭제
	//4_복습 목록보기
	@RequestMapping("user/member/userWrong")
	public String userWrong(Model model){
		List<Wrong> wrong = wrongService.wrongList();
		model.addAttribute("wrong", wrong);
		return "/user/wrong/userWrong";
		
	}
	
	
	//5_복습 상세보기
	
	
	
}
