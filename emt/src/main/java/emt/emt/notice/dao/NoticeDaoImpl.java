package emt.emt.notice.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Board;
import emt.emt.common.domain.Notice;
import emt.emt.notice.dao.mapper.NoticeMapper;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired private NoticeMapper noticeMapper;

	@Override
	public int noticeInsert(Board board) {

		return noticeMapper.noticeInsert(board);
	}

	@Override
	public int noticeUpdate(Notice notice) {

		return noticeMapper.noticeUpdate(notice);
	}

	@Override
	public int noticeDelete(Notice notice) {

		return noticeMapper.noticeDelete(notice);
	}

	@Override
	public List<Notice> noticeList(int page) {

		return noticeMapper.noticeList(page);
	}

	@Override
	public Notice noticeView(Notice notice) {

		return noticeMapper.noticeView(notice);
	}

	@Override
	public int noticeCount() {

		return noticeMapper.noticeCount();
	}

	@Override
	public List<Notice> indexNoticeList(int page) {

		return noticeMapper.indexNoticeList(page);
	}

	@Override
	public int noticeSequence() {

		return noticeMapper.noticeSequence();
	}	
}
