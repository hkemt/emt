package emt.emt.notice.dao;

import java.util.List;

import emt.emt.common.domain.FreeBoard;
import emt.emt.common.domain.NoticeBoard;

public interface NoticeDao {
	// 눌렀을때 조회수 올리기
	int hitPlus(NoticeBoard board);

	// 게시판 게시글 가져오는 메서드
	List<NoticeBoard> boardList(int type);

	int boardCount();

	// 글 등록, 수정, 삭제, 상세보기
	int boardInsert(NoticeBoard board);

	int boardUpdate(NoticeBoard board);

	int boardDelete(NoticeBoard board);

	NoticeBoard boardView(NoticeBoard board);

	// 인덱스페이지 최근게시판
	List<NoticeBoard> indexBoardList(int type);

}
