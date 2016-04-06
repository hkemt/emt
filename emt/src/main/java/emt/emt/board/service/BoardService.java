package emt.emt.board.service;

import java.util.List;

import emt.emt.common.domain.Board;

public interface BoardService {
	int boardInsert(Board board);
	int boardUpdate(Board board);
	int boardDelete(Board board);
	List<Board> boardList();
	Board boardView(Board board);

}
