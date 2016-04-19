package emt.emt.board.dao;

import java.util.List;

import emt.emt.common.domain.Board;

public interface BoardDao {
	
	// 공지사항 게시글 가져오는 메서드
	List<Board> noticeList(int type);
	
	// 공지사항 전체 개수가져오기
	int noticeCount();
	
	// 눌렀을때 조회수 올리기
	int hitPlus(Board board);
	
	// 게시판 게시글 가져오는 메서드
	List<Board> boardList(int type);
	int boardCount();

	// 글 등록, 수정, 삭제, 상세보기
	int boardInsert(Board board);
	int boardUpdate(Board board);
	int boardDelete(Board board);
	Board boardView(Board board);
	
	//인덱스페이지 최근게시판
	List<Board> indexBoardList(int type);


}
