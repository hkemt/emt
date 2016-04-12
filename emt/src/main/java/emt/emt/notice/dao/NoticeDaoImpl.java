package emt.emt.notice.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Notice;
import emt.emt.notice.dao.mapper.NoticeMapper;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired private NoticeMapper noticeMapper;

	@Override
	public int noticeInsert(Notice notice) {
		// TODO Auto-generated method stub
		return noticeMapper.noticeInsert(notice);
	}

	@Override
	public int noticeUpdate(Notice notice) {
		// TODO Auto-generated method stub
		return noticeMapper.noticeUpdate(notice);
	}

	@Override
	public int noticeDelete(Notice notice) {
		// TODO Auto-generated method stub
		return noticeMapper.noticeDelete(notice);
	}

	@Override
	public List<Notice> noticeList() {
		// TODO Auto-generated method stub
		return noticeMapper.noticeList();
	}

	@Override
	public Notice noticeView(Notice notice) {
		// TODO Auto-generated method stub
		return noticeMapper.noticeView(notice);
	}
	
}
