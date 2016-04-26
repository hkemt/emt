package emt.emt.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.board.dao.BoardDao;
import emt.emt.common.domain.Board;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired private BoardDao boardDao;
	
	@Transactional
	@Override
	public List<Board> noticeList(int type) {
		return boardDao.noticeList(type);
	}
	
	@Transactional
	@Override
	public int noticeCount() {
		return boardDao.noticeCount();
	}
	
	@Transactional
	@Override
	public List<Board> boardList(int type) {
		return boardDao.boardList(type);
	}

	@Transactional
	@Override
	public int boardCount() {
		return boardDao.boardCount();
	}

	@Transactional
	@Override
	public int boardInsert(Board board) {
		return boardDao.boardInsert(board);
	}

	@Transactional
	@Override
	public int boardUpdate(Board board) {
		return boardDao.boardUpdate(board);
	}

	@Transactional
	@Override
	public int boardDelete(Board board) {
		return boardDao.boardDelete(board);
	}

	@Transactional
	@Override
	public Board boardView(Board board) {
		return boardDao.boardView(board);
	}

	@Transactional
	@Override
	public int hitPlus(Board board) {
		return boardDao.hitPlus(board);
	}

	@Transactional
	@Override
	public List<Board> indexBoardList(int type) {
		return boardDao.indexBoardList(type);
	}
}
