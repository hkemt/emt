package emt.emt.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.board.service.BoardService;
import emt.emt.common.domain.Board;

@Controller
public class BoardController {
	@Autowired private BoardService boardService;
	

	//1_1 게시판 페이지 이동
	@RequestMapping("board")
	public String board(){
		
		return "user/board/boardList";
	}
	
	//1_2 게시판 불러오기
	@RequestMapping(value="boardList", method=RequestMethod.POST)
	@ResponseBody
	public List<Board> boardList(int type){
		// 페이지 숫자를 받아서 해당 데이터 가져옴
		return boardService.boardList(type);
	}
	
	//1_3 게시판 전체 숫자 불러오기
	@RequestMapping(value="boardCount", method=RequestMethod.POST)
	@ResponseBody
	public int boardCount(){
		
		return boardService.boardCount();
	}
	
}
