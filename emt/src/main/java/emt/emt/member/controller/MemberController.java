package emt.emt.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.User;
import emt.emt.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired private MemberService memberService;
	
	//1_회원관리 등록
	
	//2_회원관리 수정
	
	//3_회원관리 삭제
	
	//4_회원관리 목록보기
	@RequestMapping("adminMember")
	public String adminMember(Model model){
		List<User> user = memberService.memberList();
		model.addAttribute("user", user);
		return "/member/adminMember";
		
	}
	
	//5_회원관리 상세보기
	
	
}
