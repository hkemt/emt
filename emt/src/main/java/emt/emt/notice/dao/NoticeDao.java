package emt.emt.notice.dao;

import java.util.List;

import emt.emt.common.domain.Notice;

public interface NoticeDao {
	int noticeInsert(Notice notice);
	int noticeUpdate(Notice notice);
	int noticeDelete(Notice notice);
	List<Notice> noticeList(int page);
	int noticeCount();
	Notice noticeView(Notice notice);

}
