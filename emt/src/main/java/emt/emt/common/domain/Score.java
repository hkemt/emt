package emt.emt.common.domain;

import java.sql.Date;

public class Score {
	private int scoreNo;		// 점수번호
	private String userId;		// 아이디
	private int grammarInning;	// 회차
	private int scoreGrade;		// 점수
	private Date scoreDate;		// 시험일
	
	
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

	
	
}
