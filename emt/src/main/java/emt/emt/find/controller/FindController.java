package emt.emt.find.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.User;
import emt.emt.find.service.FindService;

@Controller
public class FindController {
	
	@Autowired private FindService findService;
	
	@RequestMapping("/findPw")
	public String findPw(User user){
		user.setUserId("aaaaa");
		user.setEmail("inwonzzang@naver.com");
		findService.send(user);
		return "user/find/findPw";
	}
	@RequestMapping("/findId")
	public String findId(User user){
		return "user/find/findId";
	}
}
