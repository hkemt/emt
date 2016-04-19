package emt.emt.grammar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.Grammar;
import emt.emt.grammar.service.GrammarService;

@Controller
public class GrammarController {

	@Autowired private GrammarService grammarService;
	
	// 관리자 문제관리 페이지 이동
	@RequestMapping("/admin/grammarMove")
	public String adminGrammarMove(){
		
		return "admin/grammar/grammarList";
	}
	
	// 관리자 문제조회
	@RequestMapping("/admin/grammarList")
	@ResponseBody
	public List<Grammar> grammarList(int page){
		
		return grammarService.grammarList(page);
	}
	
	// 관리자 문제조회 페이징
	@RequestMapping("/admin/grammarCount")
	@ResponseBody
	public int grammarCount(){
		
		return grammarService.grammarCount();
	}
	
	// 관리자 문제 상세보기 페이지 이동
	@RequestMapping("/admin/grammarViewMove")
	public String grammarViewMove(Grammar grammar, Model model){
		
		int no = grammar.getGrammarNo();
		
		model.addAttribute("grammarNo", no);
		
		return "admin/grammar/grammarView";
	}
	
	// 관리자 문제 상세보기
	@RequestMapping("/admin/grammarView")
	@ResponseBody
	public Grammar grammarView(Grammar grammar){
		
		return grammarService.grammarView(grammar);
	}
	
	// 관리자 문제등록 페이지 이동
	@RequestMapping("/admin/grammarAddMove")
	public String grammarAddMove(){
		
		return "admin/grammar/grammarAdd";
	}
	
	// 관리자 문제등록
	@RequestMapping(value="/admin/grammarAdd", method=RequestMethod.POST)
	@ResponseBody
	public int grammarAdd(Grammar grammar){
		
		return grammarService.grammarAdd(grammar);
	}
	
	// 관리자 문제 수정
	@RequestMapping(value="/admin/grammarUpdate", method=RequestMethod.POST)
	@ResponseBody
	public int grammarUpdate(Grammar grammar){
		
		return grammarService.grammarUpdate(grammar);
	}
	
	// 관리자 문제 삭제
	@RequestMapping(value="/admin/grammarDelete", method=RequestMethod.POST)
	@ResponseBody
	public int grammarDelete(Grammar grammar){
		
		return grammarService.grammarDelete(grammar);
	}
}
