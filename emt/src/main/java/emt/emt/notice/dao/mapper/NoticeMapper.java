package emt.emt.notice.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Notice;

public interface NoticeMapper {
	//공지사항 추가, 수정, 삭제, 상세보기 
	int noticeInsert(Notice notice);
	int noticeUpdate(Notice notice);
	int noticeDelete(Notice notice);
	Notice noticeView(Notice notice);
	
	//공지사항 목록보기
	List<Notice> noticeList(int page);
	
	//공지사항 전체 목록 수 
	int noticeCount();

	//인덱스페이지 최근공지사항
	List<Notice> indexNoticeList(int page);

}
