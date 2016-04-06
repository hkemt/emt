package emt.emt.common.domain;

import java.sql.Date;

public class Board {
	
/*
  	BOARD_NO		NUMBER
	BOARD_TITLE		VARCHAR2(100 BYTE)
	BOARD_CONTENT	VARCHAR2(4000 BYTE)
	BOARD_DATE		DATE
	BOARD_NOTICE	NUMBER
	BOARD_COUNT		NUMBER
	USER_ID			VARCHAR2(20 BYTE)
*/
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private int boardNotice;
	private int boardCount;
	private String userId;
	
	public Board() {	}
	
	public Board(int boardNo, String boardTitle, String boardContent,
			Date boardDate, int boardNotice, int boardCount, String userId) {
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.boardNotice = boardNotice;
		this.boardCount = boardCount;
		this.userId = userId;
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public int getBoardNotice() {
		return boardNotice;
	}
	public void setBoardNotice(int boardNotice) {
		this.boardNotice = boardNotice;
	}
	public int getBoardCount() {
		return boardCount;
	}
	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	

}
