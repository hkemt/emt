package emt.emt.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import emt.emt.common.domain.User;
import emt.emt.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired private MemberService memberService;
	
	//1_1회원관리 등록
	
	//1_2회원관리 수정
	
	//1_3회원관리 삭제
	
	//1_4회원관리 목록보기
	@RequestMapping("adminMember")
	public String adminMember(Model model){
		List<User> user = memberService.memberList();
		model.addAttribute("user", user);
		return "admin/member/adminMember";
	}
	
	//1_5회원관리 상세보기
	
	
	
	//2_1본인정보관리 등록
		
	//2_2본인정보관리 수정
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(User user, Model model){
		int result = memberService.memberUpdate(user);
		model.addAttribute("result", result);
		return "user/member/userMemberUpdateResult";
	}
	
	
	//2_3본인정보관리 삭제
	//2_4본인정보관리 목록보기
	@RequestMapping("userMemberList")
	public String userMemberList(User user, Model model){
		
		user = memberService.memberView(user);
		model.addAttribute("user", user);
		
		return "user/member/userMemberList";
		
	}
	
	
	//2_5본인정보관리 상세보기
	
	
}
