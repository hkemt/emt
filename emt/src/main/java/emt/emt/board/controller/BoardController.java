package emt.emt.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import emt.emt.board.service.BoardService;
import emt.emt.common.domain.Board;

@Controller
public class BoardController {
	@Autowired private BoardService boardService;
	
	//1_게시판관리 등록
	//2_게시판관리 수정
	//3_게시판관리 삭제
	//4_게시판관리 목록보기
	@RequestMapping("adminBoard")
	public String adminBoard(Model model) {
		List<Board> board = boardService.boardList();
		model.addAttribute("board", board);
		return "admin/board/adminBoard";
	}
	
	//5_게시판관리 상세보기
	

}
