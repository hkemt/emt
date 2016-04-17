package emt.emt.board.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.board.dao.mapper.BoardMapper;
import emt.emt.common.domain.FreeBoard;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired private BoardMapper boardMapper;

	@Override
	public List<FreeBoard> boardList(int type) {

		return boardMapper.boardList(type);
	}

	@Override
	public int boardCount() {

		return boardMapper.boardCount();
	}

	@Override
	public int boardInsert(FreeBoard board) {

		return boardMapper.boardInsert(board);
	}

	@Override
	public int boardUpdate(FreeBoard board) {

		return boardMapper.boardUpdate(board);
	}

	@Override
	public int boardDelete(FreeBoard board) {
	
		return boardMapper.boardDelete(board);
	}

	@Override
	public FreeBoard boardView(FreeBoard board) {

		return boardMapper.boardView(board);
	}

	@Override
	public int hitPlus(FreeBoard board) {

		return boardMapper.hitPlus(board);
	}

	@Override
	public List<FreeBoard> indexBoardList(int type) {
		// TODO Auto-generated method stub
		return boardMapper.indexBoardList(type);
	}

}
