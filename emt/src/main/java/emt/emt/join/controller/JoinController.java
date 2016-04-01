package emt.emt.join.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.domain.User;
import emt.emt.join.service.JoinService;

@Controller
public class JoinController {
	
	@Autowired JoinService joinService;
	
	@RequestMapping("/join")
	public String join(){
		return "join";
	}
	/////////////중복확인
	@RequestMapping(value="/duplCheck",method=RequestMethod.POST)
	@ResponseBody
	public User duplCheck(User user){
		System.out.println("컨트롤러");
		user = joinService.duplCheck(user);
		return user;
	}
	
	//회원가입 처리
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	@ResponseBody
	public int addUser(User user){
		int res = joinService.joinUser(user);
		return res;
	}
}
