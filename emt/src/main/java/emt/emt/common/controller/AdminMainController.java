package emt.emt.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {
	@RequestMapping("admin/adminMain")
	public String adminMain(){
		return "admin/adminMain";
	}
}
