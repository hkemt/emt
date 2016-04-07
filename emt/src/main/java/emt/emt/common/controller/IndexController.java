package emt.emt.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String home(){
		return "/index";
	}
	
	@RequestMapping("/index")
	public String index(){
		return "/index";
	}
	
	@RequestMapping("member/userReview")
	public String userReview(){
		return "member/userReview";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "/index";
	}
	
	//EMT 소개 페이지
	@RequestMapping("/aboutEMT")
	public String aboutEMT(){
		return "user/aboutEMT";
	}
}
