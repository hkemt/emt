package emt.emt.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import emt.emt.common.domain.User;
import emt.emt.join.service.JoinService;
import emt.emt.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired private MemberService memberService;
	@Autowired private JoinService joinService;
	
	//1_1회원관리 등록
	@RequestMapping("/admin/adminMemberInsert")
	public String memberInsert(){
		return "admin/member/adminMemberInsert";
	}
	@RequestMapping(value="/duplCheck2",method=RequestMethod.POST)
	@ResponseBody
	public User duplCheck(User user){
		System.out.println("컨트롤러");
		user = joinService.duplCheck(user);
		return user;
	}
	
	@RequestMapping(value="/admin/addUser2",method=RequestMethod.POST)
	@ResponseBody
	public int addUser(User user){
		int res = joinService.joinUser(user);
		return res;
	}
	//1_2회원관리 수정
	
	//1_3회원관리 삭제
	@RequestMapping(value="/admin/adminMemberDelete", method=RequestMethod.GET)
	public String adminMemberDelete(HttpServletRequest req,Model model){
		String userId=req.getParameter("userId");
		System.out.println(userId);
		
		int result=memberService.memberDelete(userId);
		model.addAttribute("result", result);
		System.out.println(result);
		return "admin/member/adminMember";
	}
	//1_4회원관리 목록보기
	@RequestMapping("/admin/adminMember")
	public String adminMember(Model model){
		return "admin/member/adminMember";
	}
	
	@RequestMapping("/admin/memberList")
	@ResponseBody
	public List<User> memberList(int type) {
		return memberService.memberList(type); 
	}
	
	@RequestMapping("/admin/memberCount") 
	@ResponseBody
	public int memberCount(){
		return memberService.memberCount();
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
	//2_4본인정보관리 상세보기
	@RequestMapping("user/member/userMemberList")
	public String userMemberList(User user, Model model){
		
		user = memberService.memberView(user);
		model.addAttribute("user", user);
		
		return "user/member/userMemberList";
	}
	
	
}
