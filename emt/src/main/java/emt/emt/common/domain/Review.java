package emt.emt.common.domain;

public class Review {
/*

	REVIEW_NO	NUMBER
	USER_ID		VARCHAR2(20 BYTE)
	QUESTION_NO	NUMBER
*/
	private int reviewNo;
	private String userId;
	private int questionNo;

	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	
	

	
}
