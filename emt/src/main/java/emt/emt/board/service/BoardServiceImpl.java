package emt.emt.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.board.dao.BoardDao;
import emt.emt.common.domain.Board;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired private BoardDao boardDao;

	@Override
	public List<Board> noticeList(int type) {

		return boardDao.noticeList(type);
	}

	@Override
	public int noticeCount() {
		
		return boardDao.noticeCount();
	}

	@Override
	public List<Board> boardList(int type) {

		return boardDao.boardList(type);
	}

	@Override
	public int boardCount() {

		return boardDao.boardCount();
	}

	@Override
	public int boardInsert(Board board) {

		return boardDao.boardInsert(board);
	}

	@Override
	public int boardUpdate(Board board) {
		
		return boardDao.boardUpdate(board);
	}

	@Override
	public int boardDelete(Board board) {
		
		return boardDao.boardDelete(board);
	}

	@Override
	public Board boardView(Board board) {
		
		return boardDao.boardView(board);
	}

	
}
