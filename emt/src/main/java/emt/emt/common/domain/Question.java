package emt.emt.common.domain;

public class Question {
	
/*	
	QUESTION_NO		NUMBER
	QUESTION_TYPE	NUMBER
	QUESTION_VIDEO	VARCHAR2(100 BYTE)
*/
	
	private int questionNo;
	private int questionType;
	private String questionVideo;
	
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	public int getQuestionType() {
		return questionType;
	}
	public void setQuestionType(int questionType) {
		this.questionType = questionType;
	}
	public String getQuestionVideo() {
		return questionVideo;
	}
	public void setQuestionVideo(String questionVideo) {
		this.questionVideo = questionVideo;
	}
	@Override
	public String toString() {
		return "Question [questionNo=" + questionNo + ", questionType="
				+ questionType + ", questionVideo=" + questionVideo + "]";
	}
}
