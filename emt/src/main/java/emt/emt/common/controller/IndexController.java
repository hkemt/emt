package emt.emt.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping(value="/logout",method = RequestMethod.POST)
	@ResponseBody
	public String logout(HttpSession session){
		session.invalidate();
		return "/index";
	}
}
