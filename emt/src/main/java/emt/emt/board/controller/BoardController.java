package emt.emt.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.board.service.BoardService;
import emt.emt.common.domain.Board;
import emt.emt.common.domain.User;

@Controller
public class BoardController {
	@Autowired private BoardService boardService;
	

	//1_0 관리자 공지관리 페이지 이동
	@RequestMapping("/admin/adminBoard")
	public String adminBoard(Model model) {
		return "admin/board/adminBoard";
	}

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
	
	//3_1 인덱스 최근 게시판목록
	@RequestMapping(value="indexBoardList")
	@ResponseBody
	public List<Board> indexBoardList(int type){
		// 페이지 숫자를 받아서 해당 데이터 가져옴
		return boardService.indexBoardList(type);
	}
	
	//4_1 글쓰기
	@RequestMapping("board/write")
	public String boardWrite(){
		return "user/board/boardWrite";
	}
	
	//4_2 글 등록하기
	@RequestMapping(value="board/addBoard", method=RequestMethod.POST)
	@ResponseBody
	public int boardAdd(HttpSession session, Board board, Model model){
		board.setUserId((String)session.getAttribute("sid"));
		int res=boardService.boardInsert(board);
		model.addAttribute("board", board);
		
		if(res == 1) {
			return board.getBoardNo();
		}
		else {
			return 0;
		}
	}
}
