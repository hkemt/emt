package emt.emt.common.domain;

import java.sql.Date;

public class NoticeBoard {

	/*
  	BOARD_NO		NUMBER
	BOARD_TITLE		VARCHAR2(100 BYTE)
	BOARD_CONTENT	VARCHAR2(4000 BYTE)
	USER_ID			VARCHAR2(20 BYTE)
	BOARD_DATE		DATE
	BOARD_COUNT		NUMBER
	IS_FIX			CHAR(1)

*/
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String userId;
	private Date boardDate;
	private int boardCount;
	private String isFix;

		
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
	public String getIsFix() {
		return isFix;
	}
	public void setIsFix(String isFix) {
		this.isFix = isFix;
	}
	
	
}
