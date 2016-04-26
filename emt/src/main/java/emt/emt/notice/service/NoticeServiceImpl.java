package emt.emt.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.Board;
import emt.emt.common.domain.Notice;
import emt.emt.notice.dao.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired private NoticeDao noticeDao;

	@Transactional
	@Override
	public int noticeInsert(Board board) {

		// 시퀸스의 값을 가져와서 넣는다
		int boardNo = noticeDao.noticeSequence();
		board.setBoardNo(boardNo);
		
		return noticeDao.noticeInsert(board);
	}

	@Transactional
	@Override
	public int noticeUpdate(Notice notice) {
		return noticeDao.noticeUpdate(notice);
	}

	@Transactional
	@Override
	public int noticeDelete(Notice notice) {
		return noticeDao.noticeDelete(notice);
	}

	@Transactional
	@Override
	public List<Notice> noticeList(int page) {
		return noticeDao.noticeList(page);
	}

	@Transactional
	@Override
	public Notice noticeView(Notice notice) {
		return noticeDao.noticeView(notice);
	}

	@Transactional
	@Override
	public int noticeCount() {
		return noticeDao.noticeCount();
	}

	@Transactional
	@Override
	public List<Notice> indexNoticeList(int page) {
		return noticeDao.indexNoticeList(page);
	}


}
