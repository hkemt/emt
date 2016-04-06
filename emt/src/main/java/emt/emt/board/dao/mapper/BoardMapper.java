package emt.emt.board.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Board;

public interface BoardMapper {
	int boardInsert(Board board);
	int boardUpdate(Board board);
	int boardDelete(Board board);
	List<Board> boardList();
	Board boardView(Board board);

}
