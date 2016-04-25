package emt.emt.login.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import emt.emt.common.domain.User;
import emt.emt.login.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired LoginService loginService;
	
	private Logger logger = Logger.getLogger(LoginController.class);
	
	// ///////로그인 페이지
	@RequestMapping("/login/login")
	public String login(Model model) {
		return "login/login";
	}

	// /////////로그인 요청 받기
	@RequestMapping(value = "/login/login", method = RequestMethod.POST)
	public String getUser(User user, HttpSession session, Model model) {
		System.out.println("컨트롤러");
		
		logger.debug("ID: " +user.getUserId() + "|| PW : " + user.getUserPw() + " 로그인 시도");
		
		user = loginService.loginCheck(user);
		
		if (user == null) {
			model.addAttribute("msg", "일치하는회원정보없음");
			
			logger.debug("일치하는 회원정보 없음");
			
			return "/login/login";
		} else if (user.getUserId().equals("admin")) {
			session.setAttribute("sid", user.getUserId());
			
			logger.debug(user.getUserId()+" 로그인");
			return "/login/login";
		} else {
			session.setAttribute("sid", user.getUserId());
			
			logger.debug(user.getUserId()+" 로그인");
			return "/login/login";
		}
	}
}
