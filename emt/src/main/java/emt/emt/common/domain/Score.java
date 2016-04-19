package emt.emt.common.domain;

import java.sql.Date;

public class Score {
	private int scoreNo;		// 점수번호
	private String userId;		// 아이디
	private int grammerInning;	// 회차
	private int scoreGrade;		// 점수
	private Date scoreDate;		// 시험일
	private int grammerNo;		// 문제번호
	
	
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
	public int getGrammerInning() {
		return grammerInning;
	}
	public void setGrammerInning(int grammerInning) {
		this.grammerInning = grammerInning;
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
	public int getGrammerNo() {
		return grammerNo;
	}
	public void setGrammerNo(int grammerNo) {
		this.grammerNo = grammerNo;
	}
	
	
}
