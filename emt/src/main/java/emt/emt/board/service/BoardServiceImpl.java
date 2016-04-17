package emt.emt.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.board.dao.BoardDao;
import emt.emt.common.domain.FreeBoard;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired private BoardDao boardDao;

	@Override
	public List<FreeBoard> boardList(int type) {

		return boardDao.boardList(type);
	}

	@Override
	public int boardCount() {

		return boardDao.boardCount();
	}

	@Override
	public int boardInsert(FreeBoard board) {

		return boardDao.boardInsert(board);
	}

	@Override
	public int boardUpdate(FreeBoard board) {
		
		return boardDao.boardUpdate(board);
	}

	@Override
	public int boardDelete(FreeBoard board) {
		
		return boardDao.boardDelete(board);
	}

	@Override
	public FreeBoard boardView(FreeBoard board) {
		
		return boardDao.boardView(board);
	}

	@Override
	public int hitPlus(FreeBoard board) {
		
		return boardDao.hitPlus(board);
	}

	@Override
	public List<FreeBoard> indexBoardList(int type) {
		// TODO Auto-generated method stub
		return boardDao.indexBoardList(type);
	}

}
