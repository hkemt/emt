package emt.emt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.domain.User;
import emt.emt.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	/////////////처음 인덱스 페이지 진딥
	@RequestMapping("/")
	public String home() {
		return "/index";
	}
	/////////////
	@RequestMapping("/index")
	public String index() {
		return "/index";
	}
	/////////로그인 페이지
	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}
	///////////로그인 요청 받기
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String getUser(User user, HttpSession session, Model model) {
		user = userService.loginCheck(user);
		if (user == null) {
			model.addAttribute("msg", "일치하는회원정보없음");
			return "/login";
		} else if(user.getUserId().equals("admin")){
			session.setAttribute("sid", user.getUserId());
			return "/login";
		} else{
			session.setAttribute("sid", user.getUserId());
			return "/login";
		}
	}
	/*/////////////회원가입 페이지
	@RequestMapping("/join")
	public String join(){
		return "join";
	}
	/////////////중복확인
	@RequestMapping(value="/duplCheck",method=RequestMethod.POST)
	@ResponseBody
	public User duplCheck(User user){
		user = userService.duplCheck(user);
		return user;
	}
	
	//회원가입 처리
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	@ResponseBody
	public int addUser(User user){
		System.out.println("호출");
		int res = userService.joinUser(user);
		return res;
	}*/
}