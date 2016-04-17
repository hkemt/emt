package emt.emt.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emt.emt.common.domain.NoticeBoard;
import emt.emt.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	//1_1 관리자 공지관리 페이지 이동
	@RequestMapping("adminNotice")
	public String adminNotice(Model model) {
		return "admin/notice/adminNotice";
	}
	
	//2_1 공지사항 페이지 이동
	@RequestMapping("notice")
	public String notice(){
		
		return "user/board/notice";
	}
	
	//2_2 공지사항 불러오기
	@RequestMapping(value="noticeBoardList", method=RequestMethod.POST)
	@ResponseBody
	public List<NoticeBoard> boardList(int type){
		
		return noticeService.boardList(type);
	}
	
	//2_3 공지사항 전체 개수 불러오기
	@RequestMapping(value="noticeBoardCount", method=RequestMethod.POST)
	@ResponseBody
	public int boardCount(){
		
		return noticeService.boardCount();
	}
	
	//2_4 공지사항 상세보기 페이지 이동
	@RequestMapping("noticeDetailMove")
	public String noticeDetailMove(NoticeBoard board, Model model){
		
		// 조회수 올리기
		noticeService.hitPlus(board);
		
		model.addAttribute("boardNo", board.getBoardNo());
		
		return "user/board/noticeDetailView";
		
	}
	
	//2_5 공지사항 상세보기
	@RequestMapping(value="noticeDetailView", method=RequestMethod.POST)
	@ResponseBody
	public NoticeBoard noticeDetailView(NoticeBoard board){
		
		return noticeService.boardView(board);
	}
	
	//3_1 인덱스 최근 공지사항 목록 불러오기
	@RequestMapping("indexNoticeList")
	@ResponseBody
	public List<NoticeBoard> indexNoticeList(int type){
		return noticeService.indexBoardList(type);
	}
	
}
