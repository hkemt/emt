package emt.emt.notice.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Notice;

public interface NoticeMapper {
	int noticeInsert(Notice notice);
	int noticeUpdate(Notice notice);
	int noticeDelete(Notice notice);
	List<Notice> noticeList();
	Notice noticeView(Notice notice);

}
