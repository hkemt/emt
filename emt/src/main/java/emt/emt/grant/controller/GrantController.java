package emt.emt.grant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.User;
import emt.emt.grant.service.GrantService;

@Controller
public class GrantController {
	
	@Autowired private GrantService grantService;
	
	@RequestMapping("/grantAuth")
	public String grantAuth(User user, Model model){
		model.addAttribute("result", grantService.grantAuth(user));
		return "user/grantAuth/grantAuth";
	}
}
