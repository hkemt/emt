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
	public List<Board> noticeList(int type) {

		return boardMapper.noticeList(type);
	}

	@Override
	public int noticeCount() {

		return boardMapper.noticeCount();
	}

	@Override
	public List<Board> boardList(int type) {

		return boardMapper.boardList(type);
	}

	@Override
	public int boardCount() {

		return boardMapper.boardCount();
	}

	@Override
	public int boardInsert(Board board) {

		return boardMapper.boardInsert(board);
	}

	@Override
	public int boardUpdate(Board board) {

		return boardMapper.boardUpdate(board);
	}

	@Override
	public int boardDelete(Board board) {
	
		return boardMapper.boardDelete(board);
	}

	@Override
	public Board boardView(Board board) {

		return boardMapper.boardView(board);
	}

	
}
