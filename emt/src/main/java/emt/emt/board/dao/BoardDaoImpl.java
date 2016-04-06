package emt.emt.board.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.board.dao.mapper.BoardMapper;
import emt.emt.common.domain.Board;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired private BoardMapper boardMapper;

	@Override
	public int boardInsert(Board board) {
		// TODO Auto-generated method stub
		return boardMapper.boardInsert(board);
	}

	@Override
	public int boardUpdate(Board board) {
		// TODO Auto-generated method stub
		return boardMapper.boardUpdate(board);
	}

	@Override
	public int boardDelete(Board board) {
		// TODO Auto-generated method stub
		return boardMapper.boardDelete(board);
	}

	@Override
	public List<Board> boardList() {
		// TODO Auto-generated method stub
		return boardMapper.boardList();
	}

	@Override
	public Board boardView(Board board) {
		// TODO Auto-generated method stub
		return boardMapper.boardView(board);
	}
}
