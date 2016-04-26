package emt.emt.find.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import emt.emt.common.domain.User;
import emt.emt.find.service.FindService;

@Controller
public class FindController {
	
	@Autowired private FindService findService;
	
	@RequestMapping("/findPw")
	public String findPw(){
		return "user/find/findPw";
	}
	
	@RequestMapping(value="/findPw", method = RequestMethod.POST)
	public String findPw(User user,Model model){
		findService.send(user);
		model.addAttribute("pw", "1"+findService.FindPw(user));
		return "user/find/findPw";
	}
	@RequestMapping("/findId")
	public String findId(User user){
		return "user/find/findId";
	}
}
