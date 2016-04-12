package emt.emt.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Notice;
import emt.emt.notice.dao.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired private NoticeDao noticeDao;

	@Override
	public int noticeInsert(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.noticeInsert(notice);
	}

	@Override
	public int noticeUpdate(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.noticeUpdate(notice);
	}

	@Override
	public int noticeDelete(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.noticeDelete(notice);
	}

	@Override
	public List<Notice> noticeList() {
		// TODO Auto-generated method stub
		return noticeDao.noticeList();
	}

	@Override
	public Notice noticeView(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.noticeView(notice);
	}
}
