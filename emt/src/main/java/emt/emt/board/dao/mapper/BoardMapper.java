package emt.emt.board.dao.mapper;

import java.util.List;

import emt.emt.common.domain.FreeBoard;

public interface BoardMapper {

	// 눌렀을때 조회수 올리기
	int hitPlus(FreeBoard board);

	// 게시판 게시글 가져오는 메서드
	List<FreeBoard> boardList(int type);

	int boardCount();

	// 글 등록, 수정, 삭제, 상세보기
	int boardInsert(FreeBoard board);

	int boardUpdate(FreeBoard board);

	int boardDelete(FreeBoard board);

	FreeBoard boardView(FreeBoard board);

	// 인덱스페이지 최근게시판
	List<FreeBoard> indexBoardList(int type);

}
