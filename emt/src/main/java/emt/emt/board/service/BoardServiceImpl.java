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
	public int boardInsert(Board board) {
		// TODO Auto-generated method stub
		return boardDao.boardInsert(board);
	}

	@Override
	public int boardUpdate(Board board) {
		// TODO Auto-generated method stub
		return boardDao.boardUpdate(board);
	}

	@Override
	public int boardDelete(Board board) {
		// TODO Auto-generated method stub
		return boardDao.boardDelete(board);
	}

	@Override
	public List<Board> boardList() {
		// TODO Auto-generated method stub
		return boardDao.boardList();
	}

	@Override
	public Board boardView(Board board) {
		// TODO Auto-generated method stub
		return boardDao.boardView(board);
	}
}
