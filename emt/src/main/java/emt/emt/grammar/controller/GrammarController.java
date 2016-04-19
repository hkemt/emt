package emt.emt.grammar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.common.domain.Grammar;
import emt.emt.grammar.service.GrammarService;

@Controller
public class GrammarController {
	@Autowired private GrammarService grammarService;
	
	@RequestMapping("userGrammarList")
	public String userGrammarList(Model model){
		List<Grammar> grammar = grammarService.grammarList();
		model.addAttribute("grammar", grammar);
		return "user/grammar/userGrammarList";
		
	}
	
}
