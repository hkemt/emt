package emt.emt.board.dao;

import java.util.List;

import emt.emt.common.domain.Board;

public interface BoardDao {
	int boardInsert(Board board);
	int boardUpdate(Board board);
	int boardDelete(Board board);
	List<Board> boardList();
	Board boardView(Board board);

}
