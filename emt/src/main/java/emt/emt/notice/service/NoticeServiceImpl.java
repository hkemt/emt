package emt.emt.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.NoticeBoard;
import emt.emt.notice.dao.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired private NoticeDao noticeDao;

	@Override
	public List<NoticeBoard> boardList(int type) {

		return noticeDao.boardList(type);
	}

	@Override
	public int boardCount() {

		return noticeDao.boardCount();
	}

	@Override
	public int boardInsert(NoticeBoard board) {

		return noticeDao.boardInsert(board);
	}

	@Override
	public int boardUpdate(NoticeBoard board) {
		
		return noticeDao.boardUpdate(board);
	}

	@Override
	public int boardDelete(NoticeBoard board) {
		
		return noticeDao.boardDelete(board);
	}

	@Override
	public NoticeBoard boardView(NoticeBoard board) {
		
		return noticeDao.boardView(board);
	}

	@Override
	public int hitPlus(NoticeBoard board) {
		
		return noticeDao.hitPlus(board);
	}

	@Override
	public List<NoticeBoard> indexBoardList(int type) {
		// TODO Auto-generated method stub
		return noticeDao.indexBoardList(type);
	}

}
