package emt.emt.common.domain;

import java.sql.Date;

public class Reply {
	
/*
	REPLY_NO	NUMBER
	REPLY_CONTENT	VARCHAR2(4000 BYTE)
	USER_ID		VARCHAR2(20 BYTE)
	REPLY_DATE	DATE
	BOARD_NO	NUMBER
*/
	
	private int replyNo;
	private String replyContent;
	private String userId;
	private Date replyDate;
	private int boardNo;
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

}
