package emt.emt.notice.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.NoticeBoard;
import emt.emt.notice.dao.mapper.NoticeMapper;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired private NoticeMapper noticeMapper;
	@Override
	public List<NoticeBoard> boardList(int type) {

		return noticeMapper.boardList(type);
	}

	@Override
	public int boardCount() {

		return noticeMapper.boardCount();
	}

	@Override
	public int boardInsert(NoticeBoard board) {

		return noticeMapper.boardInsert(board);
	}

	@Override
	public int boardUpdate(NoticeBoard board) {

		return noticeMapper.boardUpdate(board);
	}

	@Override
	public int boardDelete(NoticeBoard board) {
	
		return noticeMapper.boardDelete(board);
	}

	@Override
	public NoticeBoard boardView(NoticeBoard board) {

		return noticeMapper.boardView(board);
	}

	@Override
	public int hitPlus(NoticeBoard board) {

		return noticeMapper.hitPlus(board);
	}

	@Override
	public List<NoticeBoard> indexBoardList(int type) {
		// TODO Auto-generated method stub
		return noticeMapper.indexBoardList(type);
	}

}
