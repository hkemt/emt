package emt.emt.notice.service;

import java.util.List;

import emt.emt.common.domain.Notice;

public interface NoticeService {
	int noticeInsert(Notice notice);
	int noticeUpdate(Notice notice);
	int noticeDelete(Notice notice);
	List<Notice> noticeList(int page);
	int noticeCount();
	Notice noticeView(Notice notice);

}
