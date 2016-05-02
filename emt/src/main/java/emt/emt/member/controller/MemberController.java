package emt.emt.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		int res = joinService.joinAdminUser(user);
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
	
	
		
	//2_2본인정보관리 수정
	@RequestMapping(value="user/member/userMemberUpdate", method=RequestMethod.POST)
	public String update(HttpSession session,User user, Model model){
		String userId = (String)session.getAttribute("sid");
		user.setUserId(userId);
		int updateResult = memberService.memberUpdate(user);
		model.addAttribute("updateResult", updateResult);
		return "user/member/userMemberView";
	}
	
	
	//2_3본인정보관리 삭제
	@RequestMapping(value="user/member/userMemberDelete", method=RequestMethod.POST)
	@ResponseBody
	public int userMemberDelete(HttpSession session, String userId){
		session.invalidate();
		return memberService.userMemberDelete(userId);
	}
	
	//2_4본인정보관리 상세보기
	@RequestMapping("user/member/userMemberList")
	public String userMemberList(User user, Model model){
		
		user = memberService.memberView(user);
		model.addAttribute("user", user);
		
		return "user/member/userMemberChk";
	}
	
	@RequestMapping(value="user/member/userMemberView")
	public String userMemberView(HttpSession session, User user, Model model){
		String userId = (String)session.getAttribute("sid");
		user.setUserId(userId);
		user = memberService.memberView(user);
		model.addAttribute("user", user);
		
		return "user/member/userMemberView";
	}
	
	
}
