package emt.emt.common.controller;

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
}
