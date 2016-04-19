package emt.emt.common.domain;

import java.sql.Date;

public class Score {
	
/*
	SCORE_NO			NUMBER
	USER_ID				VARCHAR2(20 BYTE)
	GRAMMAR_INNING		NUMBER
	SCORE_GRADE			NUMBER
	SCORE_DATE			DATE
	GRAMMAR_NO			NUMBER
*/	
	
	private int scoreNo;
	private String userId;
	private int grammarInning;
	private int scoreGrade;
	private Date scoreDate;
	private int grammarNo;
	
	public int getScoreNo() {
		return scoreNo;
	}
	public void setScoreNo(int scoreNo) {
		this.scoreNo = scoreNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getGrammarInning() {
		return grammarInning;
	}
	public void setGrammarInning(int grammarInning) {
		this.grammarInning = grammarInning;
	}
	public int getScoreGrade() {
		return scoreGrade;
	}
	public void setScoreGrade(int scoreGrade) {
		this.scoreGrade = scoreGrade;
	}
	public Date getScoreDate() {
		return scoreDate;
	}
	public void setScoreDate(Date scoreDate) {
		this.scoreDate = scoreDate;
	}
	public int getGrammarNo() {
		return grammarNo;
	}
	public void setGrammarNo(int grammarNo) {
		this.grammarNo = grammarNo;
	}
	
	
	
	
}
