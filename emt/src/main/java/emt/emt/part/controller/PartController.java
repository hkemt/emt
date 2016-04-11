package emt.emt.part.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Question;
import emt.emt.part.service.PartService;

@Controller
public class PartController {
	
	@Autowired private PartService partService;
	
	
	@RequestMapping("partMove")
	public String partMove(Model model, int no){
		
		model.addAttribute("no", no);
		
		return "/user/part/userPart";
	}
	
	@ResponseBody
	@RequestMapping("partAll")
	public List<Question> partAll(Question question){
		
		return partService.partAll(question);
	}
}
