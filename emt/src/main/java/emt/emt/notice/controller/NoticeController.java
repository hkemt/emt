package emt.emt.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.board.service.BoardService;
import emt.emt.common.domain.Board;
import emt.emt.common.domain.Notice;
import emt.emt.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired private NoticeService noticeService;
	@Autowired private BoardService boardService;
	
	//1_1 관리자 공지관리 페이지 이동
	@RequestMapping("/admin/adminNotice")
	public String adminNotice(Model model) {
		return "admin/notice/adminNotice";
	}
	
	//1_2 관리자 공지관리 목록 불러오기
	@RequestMapping("/admin/noticeList")
	@ResponseBody
	public List<Notice> noticeList(int type){
		return noticeService.noticeList(type);
	}
	
	//1_3 관리자 공지관리 전체 개수 확인
	@RequestMapping("/admin/noticeCount")
	@ResponseBody
	public int noticeCount(){
		return noticeService.noticeCount();
	}
	
	//2_1 공지사항 페이지 이동
	@RequestMapping("notice")
	public String notice(){
		
		return "user/board/notice";
	}
	
	//2_2 공지사항 불러오기
	@RequestMapping("noticeView")
	@ResponseBody
	public List<Board> noticeView(int type){
		
		return boardService.noticeList(type);
	}
	
	//2_3 공지사항 전체 개수 불러오기
	@RequestMapping(value="noticeCount", method=RequestMethod.POST)
	@ResponseBody
	public int noticeCount2(){
		
		return boardService.noticeCount();
	}
	
	//2_4 공지사항 상세보기 페이지 이동
	@RequestMapping("noticeDetailMove")
	public String noticeDetailMove(Board board, Model model){
		
		// 조회수 올리기
		boardService.hitPlus(board);
		
		model.addAttribute("boardNo", board.getBoardNo());
		
		board = boardService.boardView(board);
		model.addAttribute("boardUserId", board.getUserId());
		
		return "user/board/noticeDetailView";
		
	}
	
	//2_5 공지사항 상세보기
	@RequestMapping(value="noticeDetailView", method=RequestMethod.POST)
	@ResponseBody
	public Board noticeDetailView(Board board, Model model){

		return boardService.boardView(board);
	}
	
	@RequestMapping("noticeModify")
	public String noticeModify(Board board, Model model){
		
		model.addAttribute("boardNo", board.getBoardNo());
		
		return "user/board/boardModify";
		
	}
	//3_1 인덱스 최근 공지사항 목록 불러오기
	@RequestMapping("indexNoticeList")
	@ResponseBody
	public List<Notice> indexNoticeList(int type){
		return noticeService.indexNoticeList(type);
	}
	
}
