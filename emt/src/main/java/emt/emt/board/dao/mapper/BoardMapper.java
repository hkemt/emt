package emt.emt.board.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Board;

public interface BoardMapper {
	
	// 공지사항 게시글 가져오는 메서드
	List<Board> noticeList(int type);
	int noticeCount();
	
	// 게시판 게시글 가져오는 메서드
	List<Board> boardList(int type);
	int boardCount();
	
	// 글 등록, 수정, 삭제, 상세보기
	int boardInsert(Board board);
	int boardUpdate(Board board);
	int boardDelete(Board board);
	Board boardView(Board board);

}
